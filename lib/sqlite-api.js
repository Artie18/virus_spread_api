var sqlite3 = require('sqlite3').verbose();
var db = new sqlite3.Database('virus_spread');

exports.db = {
  exec: function (query, cb) {
    console.log('Sending query to sqllite3: ' + query);
    db.run(query, function (err, res) {
      if(err) {
        cb(res, err);
        return;
      }
      cb(res, err);
    });
  },
  exec_all: function (query, params, cb) {
    console.log('Sending query to sqllite3: ' + query);
    db.all(query, params, function (err, res) {
      if(err) {
        cb(res, err);
        return;
      }
      cb(res, err);
    });
  },
  exec_with_params: function (query, params, cb) {
    console.log('Sending query to sqllite3: ' + query);
    db.run(query, params, {prepare: true}, function (err, res) {
      if(err) {
        cb(res, err);
        return;
      }
      cb(res, err);
    });
  },
  findBy: function (param, cb) {
    query = "SELECT * FROM " + param.c + " WHERE " + param.k + " = " + param.v + ";"
    db.all(query, function (err, res) {
      if(err) {
        console.log('Punch in a face with err: ' + err);
        cb(res, err);
        return;
      }
      console.log('Cassandra kissing back: ' + res);
      cb(res, err);
    });
  },
  close: function () {
    console.log('Closing db');
    db.close();
  },
}
