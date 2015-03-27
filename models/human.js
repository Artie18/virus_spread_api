var rep = require('../db/human-repository');

var HumanSchema = {
  id: '', // Device id
  name: , // user name
  sickWith: [], // Sick ids
  gender: '',// male, female
  age: 0 // age of user
}

var Human = function () {

  return {
    create: function (cb) {
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