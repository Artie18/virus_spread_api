var cass = require('../lib/cassandra-api').db;
var Sort = require('sorted-object-array');

exports.db = function () {
  return {
    create: function (h, cb) {
      cass.exec("INSERT INTO humans (id, name, gender, age) " +
         "VALUES ("+h.id +",'"+ h.name +"','"+h.gender +"',"+h.age +
          ");", cb);
    },
    get: function (id, cb) {
      cass.exec("SELECT * FROM humans WHERE id =" + id, cb)
    },
    setSick: function(params, cb) {
      cass.exec_with_params("UPDATE humans SET sickWith = ?,  infectedBy = ?" +
        " WHERE id = " + params.id, [params.type, params.infectedBy], cb);
    },
    whoMadeMeSick: function(id, cb) {
      query = "SELECT kissedBy, count FROM meeting_count WHERE kissedOn = ?;"
      cass.exec_with_params(query, [id], function (result, errs) {
        if(errs) {
          cb(null, errs);
          return;
        }
        if(result && result.rows) {
          var sorted = new Sort('count', result.rows).array;
          result = sorted[0][0].kissedby;
          cb(result, errs);
          return;
        }
        cb(result, errs);
      })
    }
  }
}