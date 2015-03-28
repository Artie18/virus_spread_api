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
        console.log('Punch in a face with err: ' + err);
        cb(res, err);
      }
      console.log('Cassandra kissing back: ' + res);
      cb(res, err);
    });
  },
  exec_with_params: function (query, params, cb) {
    console.log('Sending params kiss: ' + query);
    client.execute(query, params, {prepare: true},function (err, res) {
      if(err) {
        console.log('Punch in a face with err: ' + err);
        cb(res, err);
      }
      console.log('Cassandra kissing back: ' + res);
      cb(res, err);
    });
  }
}
