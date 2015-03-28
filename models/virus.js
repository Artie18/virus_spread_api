var rep = require('../db/virus-repository').db();

var VirusSchema = {
  title: '', // Virus title
  descriprion: '' // Virus description
}

exports.virus = function () {
  return {
    create: function (q, cb) {
      var virus = {
        title: q.title,
        description: q.description
      };
      rep.create(virus, cb);
    },
  }
}