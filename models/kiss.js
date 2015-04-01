var rep  = require('../db/kiss-repository').db();
var hRep = require('../db/human-repository').db();
var uuid = require('node-uuid');

function KissSchema() {
  return {
    id: '', // uuid key
    lt: '', // latitude
    ln: '', // longitude
    time: new Date(), // time of kiss
    kissedBy: '', // id of human who kissed
    kissedOn: ''  // id of human kiss reciver
  }
}

exports.kiss = function () {
  return {
    all: function (cb) {
      rep.all(cb);
    },
    create: function (q, cb) {
      var kSchema = {
        id: uuid.v4() + '',
        lt: q.location.lat,
        ln: q.location.ln,
        time: q.time,
        kissedBy: q.foreignId,
        kissedOn: q.deviceId
      };

      hRep.get(q.foreignId + '', function (him, err) {
        if(him && him[0].sickWith) {
          rep.create(kSchema, function (result, err) {
            if(err) {
              cb(null, err);
              return;
            }
            rep.updateMeetUp(q.foreignId, q.deviceId, cb);
          });
        } else {
          cb();
        }
      })

    },
    wasKissedOn: function (id, cb) {
      rep.findBy('kissedOn', id + '', function (result, err) {
        if(err) { cb(result, err); return; }
        if(typeof result.rows == 'undefined') { cb(result, err); return; }
        rep.create;
      });
    }
  }
}


