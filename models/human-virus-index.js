var rep = require('../db/human-virus-index-repository').db();
var uuid = require('node-uuid');

var HumanVirusSchema = {
  id: '', // id
  humanId: '', // id of sick human
  virusId: '', // id of a virus
  time: new Date(), // time when he got sick
  lat: '', // lat of loc where he got sick
  ln: ''   // ln of loc where he got sick
}

exports.humanVirusIndex = function () {
  return {
    create: function (q, cb) {
      hvSchema = new HumanVirusSchema();
      hvSchema = {
        id: uuid.v4(),
        humanId: q.deviceID,
        virusId: q.type,
        lat: q.location.lat,
        ln: q.location.ln,
        time: q.time
      };
      rep.create(hSchema, cb);
    },
  }

}