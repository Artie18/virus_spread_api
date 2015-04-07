var rep = require('../db/repos/proxy/human-virus-index-repository').db();
var uuid = require('node-uuid');

//function humanVirusSchema() {
//  return {
//    id: '', // id
//    humanId: '', // id of sick human
//    virusId: '', // id of a virus
//    time: new Date(), // time when he got sick
//    lat: '', // lat of loc where he got sick
//    ln: ''   // ln of loc where he got sick
//  }
//}

exports.humanVirusIndex = function () {
  return {
    create: function (q, cb) {
      var hvSchema = {
        id: uuid.v4() + '',
        humanId: q.deviceId,
        virusId: q.type,
        lat: q.location.lat,
        ln: q.location.ln,
        time: q.time
      };
      rep.create(hvSchema, cb);
    },
  }

}