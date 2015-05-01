var json = require('./MOCK_DATA.json');
var db   = require('./lib/sqlite-api').db;

json.forEach(function (entry) {
  var keys = Object.keys(entry);
  var params = [];
  keys.forEach(function (k) { params.push(entry[k]); })
  db.exec_with_params("INSERT INTO kisses " +
    "(id, lt, ln, time, kissedBy, kissedOn) " +
    "VALUES (?, ?, ?, ?, ?, ?);",
    params, function (res, err) {
      console.log("Res is: " + res);
      console.log("Err is: " + err);
    });
})
