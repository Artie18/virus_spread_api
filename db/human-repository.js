var cassandra = require('../lib/cassandra-api');

var db = function () {
  return {
    create: function (human) {
      cassandra.exec('')
    }
  }
}