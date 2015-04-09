var cass = require('../lib/sqlite-api').db;
var Sort = require('sorted-object-array');

exports.db = function () {
  return {
    create: function (h, cb) {
      cass.exec("INSERT INTO humans (id, name, gender, age) " +
         "VALUES ('"+ h.id +"','"+ h.name +"','"+h.gender +"',"+h.age +
          ");", cb);
    },
    update: function (id, params, cb) {
      this.get(id, function (res, err) {
        if(res.length < 1) {
          cb(null, {message: "No User"})
        }
        var keysStr = " ";
        var vals = [];
        var allParams = Object.keys(params);
        // Need better solution, but not now. We doing refactoring anyway
        for(var i = 0; i < allParams.length; i++) {
          if(i < allParams.length - 1) {
            keysStr += allParams[i] + " = ?, ";
          } else {
            keysStr += allParams[i] + " = ? ";
          }

          vals.push(params[allParams[i]]);
        }
        allParams.forEach(function (k) {

        });
        vals.push(id);
        cass.exec_with_params("UPDATE humans SET " + keysStr + " WHERE id = ?", vals, cb);
      });

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
          } else { result = null; }
          cb(result, errs);
          return;
        }
        cb(result, errs);
      })
    }
  }
}