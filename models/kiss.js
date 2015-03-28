var rep = require('../db/kiss-repository').db();
var uuid = require('node-uuid');

function KissSchema() {
  return {
    id: '', // uuid key
    lt: '', // latitude
    ln: '', // longitude
    time: new Date(), // time of kiss
    kissedBy: '', // id of human who kissed
    kissedOn: '', // id of human kiss reciver
  }
}

exports.kiss = function () {
  return {
    create: function (q, cb) {
      var kSchema = {
        id: uuid.v4(),
        lt: q.location.lt,
        ln: q.location.ln,
        time: q.time,
        kissedBy: q.deviceId,
        kissedOn: q.foreignId
      };
      rep.create(kSchema, cb);
    }
  }
}


