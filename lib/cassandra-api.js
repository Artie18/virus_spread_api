var cassandra = require('cassandra-driver');
var client = new cassandra.Client({
  contactPoints: ['127.0.0.1'],
  keyspace: 'virus_spread'
});

var cassandraClient = {
  exec: function (query, cb) {
    console.log('Sending a kiss to Cassandra: ' + query);
    client.execute(query, function (err, res) {
      if err {
        console.log('Punch in a face with err:' + err);
        cb(res, err);
      }
      console.log('Cassandra kissing back: ' + res);
      cb(res, err);
    });
  }
}
