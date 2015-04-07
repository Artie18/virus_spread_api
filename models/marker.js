var rep = require('../db/repos/marker-repository').db();
var uuid = require('node-uuid');

function markerSchema() {
  id: '', // uuid id
  lt: '',
  ln: ''
}

exports.marker = function () {
  return {
    create: function (q, cb) {
      marker = {
        id: uuid.v4() + '',
        lt: q.location.lt,
        ln: q.location.ln,
      }
      rep.create(marker, cb);
    }
  }
}