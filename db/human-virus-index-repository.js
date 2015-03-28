var cass = require('../lib/cassandra-api').db;

exports.db = function () {
  return {
    create: function (hv, cb) {
      cass.exec("INSERT INTO virus_index_schema" +
        "(id, humanId, virusId, lat, ln, time) " +
        "VALUES (" +
        hv.id + "," +
        hv.humanId + "," +
        hv.virusId + "," +
        "'" + hv.lat + "'," +
        "'" + hv.time + "')", cb);
    }
  }
}