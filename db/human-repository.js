var cass = require('../lib/cassandra-api').db;

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
      cass.exec("UPDATE humans SET sickWith = " + params.type +
        " WHERE deviceId = " + params.id, cb);
    }
  }
}