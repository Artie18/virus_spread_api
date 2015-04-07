var cass = require('../../lib/sqlite-api').db;
var Sort = require('sorted-object-array');

exports.db = function () {
  return {
    create: function (h, cb) {
      cass.exec("INSERT INTO humans (id, name, gender, age) " +
         "VALUES ('"+ h.id +"','"+ h.name +"','"+h.gender +"',"+h.age +
          ");", cb);
    },
    get: function (id, cb) {
      cass.exec_all("SELECT * FROM humans WHERE id = ?", [id], cb)
    },
    setSick: function(params, cb) {
      params.id = params.id + ''
      cass.exec_with_params("UPDATE humans SET sickWith = ?,  infectedBy = ?" +
        " WHERE id = '" + params.id + "'", [params.type, params.infectedBy + ''], cb);
    },
    whoMadeMeSick: function(id, cb) {
      query = "SELECT kissedBy, count FROM meeting_count WHERE kissedOn = ?;"
      cass.exec_all(query, [id + ''], function (result, errs) {
        if(errs) {
          cb(null, errs);
          return;
        }
        if(result && result.rows) {
          var sorted = new Sort('count', result.rows).array;
          if(sorted && sorted[0] && sorted[0][0]) {
            result = sorted[0][0].kissedby;
          } else {
            result = null;
          }
          cb(result, errs);
          return;
        }
        cb(result, errs);
      })
    }
  }
}