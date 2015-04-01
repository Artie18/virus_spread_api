var rep = require('../db/point-repository').db();
var uuid = require('node-uuid');

function pointSchema() {
  id: '', // uuid id
  lt: '',
  ln: '',
  visitedBy: '', // user id who visited this place
}

exports.point = function () {
  return {
    create: function (q, cb) {
      point = {
        id: uuid.v4() + '',
        lt: q.location.lt,
        ln: q.location.ln,
        visitedBy: q.deviceId
      }
      rep.create(point, cb);
    }
  }
}