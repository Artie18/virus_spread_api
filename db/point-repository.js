var cass = require('../lib/cassandra-api').db;

exports.db = function () {
  return {
    create: function (p, cb) {
      params = [p.id, p.lt, p.ln, p.visitedBy]
      cass.exec_with_params("INSERT INTO points " +
        "(id, lt, ln, visitedBy)" +
        "VALUES (?, ?, ?, ?) USING TTL 259200;", params, cb);
    }
  }
}