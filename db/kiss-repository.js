var cass = require('../lib/cassandra-api').db;

exports.db = function () {
  return {
    create: function (k, cb) {
      params = [k.id, k.lt, k.ln, k.time, k.kissedBy, k.kissedOn]
      cass.exec_with_params("INSERT INTO kisses " +
        "(id, lt, ln, time, kissedBy, kissedOn) " +
        "VALUES (?, ?, ?, ?, ?, ?);",
        params, cb);
    }
  }
}