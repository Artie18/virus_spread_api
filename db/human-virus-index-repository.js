var cass = require('../lib/sqlite-api').db;

exports.db = function () {
  return {
    create: function (hv, cb) {
      params = [hv.id, hv.humanId, hv.virusId, hv.lat, hv.ln, hv.time]
      cass.exec_with_params("INSERT INTO human_virus_index " +
        "(id, humaId, virusId, lat, ln, time) " +
        "VALUES (?, ?, ?, ?, ?, ?);",
        params, cb);
    }
  }
}