var cass = require('../lib/sqlite-api').db;

exports.db = function () {
  return {
    create: function (k, cb) {
      params = [k.title, k.description]
      cass.exec_with_params("INSERT INTO viruses " +
        "(title, description) " +
        "VALUES (?, ?);",
        params, cb);
    }
  }
}