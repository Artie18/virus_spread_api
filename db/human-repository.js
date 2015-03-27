var cass = require('../lib/cassandra-api').db;

exports.db = function () {
  return {
    create: function (h, cb) {
      cass.exec("INSERT INTO humans (id, name, gender, age) " +
         "VALUES ("+h.id +",'"+ h.name +"','"+h.gender +"',"+h.age +
          ");", cb);
    }
  }
}