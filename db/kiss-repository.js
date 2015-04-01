var cass = require('../lib/sqlite-api').db;

exports.db = function () {
  return {
    create: function (k, cb) {
      params = [k.id + '', k.lt, k.ln, k.time, k.kissedBy, k.kissedOn]
      cass.exec_with_params("INSERT INTO kisses " +
        "(id, lt, ln, time, kissedBy, kissedOn) " +
        "VALUES (?, ?, ?, ?, ?, ?);",
        params, cb);
    },
    all: function (cb) {
      query = "SELECT * FROM kisses;"
      cass.exec_all(query, cb);
    },
    // TODO: This is horrible method, refactor right away
    updateMeetUp: function (hisId, myId, cb) {
      hisId = hisId + '';
      myId  = myId  + '';
      cass.exec_all("SELECT count(*) FROM kisses WHERE " +
        "kissedOn = ? and kissedBy = ?;", [myId, hisId], //
        function (res, errs) {
          if(errs) {
            cb(null, errs);
            return;
          }
          if(res && res && res[0]['count(*)']) {
            var newCount = parseInt(res[0]['count(*)']);
            console.log(hisId)
            console.log(myId)
            cass.exec_all(
              "SELECT kissedOn, kissedBy FROM meeting_count WHERE kissedBy = ? and kissedOn = ?",
              [hisId + '', myId + ''], function (res, errs) {
                if(errs) {
                  cb(null, errs);
                  return;
                }
                if(res && res.length >= 1) {
                  cass.exec_with_params(
                    "UPDATE meeting_count SET count = ? WHERE kissedBy = ? and kissedOn = ? ",
                    [ newCount, hisId, myId], cb)
                } else {
                  cass.exec_with_params(
                    "INSERT INTO meeting_count (kissedBy, kissedOn, count) VALUES (?, ?, 1)",
                    [hisId, myId], cb)
                }
              });
          }
        });
    },
    findBy: function (param, id, cb) {
      id = id + '';
      cass.findBy({ c: 'kisses', k: param, v: id }, cb);
    }
  }
}