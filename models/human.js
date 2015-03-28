var rep = require('../db/human-repository').db();
var kiss  = require('../models/kiss').kiss();

function HumanSchema() {
  return {
    id: '', // Device id
    name: '', // user name
    sickWith: [], // Sick ids
    gender: '',// male, female
    age: 0 // age of user
  }
}

exports.human = function () {
  return {
    create: function (q, cb) {
      hSchema = new HumanSchema();
      hSchema = {
        id: q.deviceId,
        name: q.name,
        gender: q.gender,
        age: q.age
      }
      rep.create(hSchema, cb);
    },
    get: function (id, cb) {
      rep.get(id, function (res, err) {
        if(err) {
          cb(res, err);
        } else {
          cb(res.rows[0], err);
        }
      })
    },
    isSick: function (id, type, cb) {
      params = {id: id, type: type }
      rep.setSick(params, cb);
    },
    whoMadeHimSick: function (id) {

    }

  }

}