var cass = require('../../../lib/sqlite-api').db;
var query_builder = require('../query_builder');

exports.db = function () {
  return {
    create: function (k, cb) {
      params = [k.id, k.kissedBy, k.kissedOn]
      cass.exec_with_params("INSERT INTO deseased-healthy-kisses " +
        "(id, kissedBy, kissedOn) " +
        "VALUES (?, ?, ?);",
        params, cb);
    },
    find_and_destroy: function (param, id, cb) {
      //TODO: Implement
    }
  }
};