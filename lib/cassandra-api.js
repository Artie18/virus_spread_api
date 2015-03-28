var cassandra = require('cassandra-driver');
var client = new cassandra.Client({
  contactPoints: ['127.0.0.1'],
  keyspace: 'virus_spread'
});

exports.db = {
  exec: function (query, cb) {
    console.log('Sending a kiss to Cassandra: ' + query);
    client.execute(query, function (err, res) {
      if(err) {
        cb(res, err);
        return;
      }
      cb(res, err);
    });
  },
  exec_with_params: function (query, params, cb) {
    client.execute(query, params, {prepare: true},function (err, res) {
      if(err) {
        cb(res, err);
        return;
      }
      cb(res, err);
    });
  },
  findBy: function (param, cb) {
    query = "SELECT * FROM " + param.c + " WHERE " + param.k + " = " + param.v + ";"
    client.execute(query, function (err, res) {
      if(err) {
        console.log('Punch in a face with err: ' + err);
        cb(res, err);
        return;
      }
      console.log('Cassandra kissing back: ' + res);
      cb(res, err);
    });
  }
}
