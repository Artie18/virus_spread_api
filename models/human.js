var rep = require('../db/human-repository').db();

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
        id: q.id,
        name: q.name,
        gender: q.gender,
        age: q.age
      }
      rep.create(hSchema, cb);
    }
  }

}