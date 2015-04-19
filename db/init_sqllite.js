var db = require('../lib/sqlite-api').db;
var async = require('async');

async.waterfall([
  function(cb) {
    db.exec('CREATE TABLE IF NOT EXISTS humans (' +
      'id uuid PRIMARY KEY, ' +
      'name text, ' +
      'sickWith text, ' +
      'gender text, ' +
      'age int )', function () { cb(); });
  },
  function (cb) {
    db.exec('CREATE TABLE IF NOT EXISTS viruses (' +
      'title text PRIMARY KEY, ' +
      'description text)', function () { console.log('Created Viruses'); cb();})
  },
  function (cb) {
    db.exec('CREATE TABLE IF NOT EXISTS kisses (' +
      'id uuid, ' +
      'lt text, ' +
      'ln text, ' +
      'time timestamp, ' +
      'kissedBy uuid, ' +
      'kissedOn uuid, ' +
      'PRIMARY KEY (kissedBy, kissedOn, id) )', function () { console.log('Created Kisses'); cb();})
  },
  function (cb) {
    db.exec('CREATE TABLE IF NOT EXISTS points (' +
      'id uuid PRIMARY KEY, ' +
      'lt text, ' +
      'ln text, ' +
      'visitedBy uuid)', function () { console.log('Created Points'); cb(); })
  },
  function (cb) {
    db.exec('CREATE TABLE IF NOT EXISTS markers (' +
      'id uuid PRIMARY KEY, ' +
      'lt text, ' +
      'ln text)', function () { console.log('Created Points'); cb(); })
  },
  function (cb) {
    db.exec('CREATE TABLE IF NOT EXISTS human_virus_index (' +
      'id uuid PRIMARY KEY, ' +
      'humaId uuid, ' +
      'virusId text, ' +
      'time timestamp, ' +
      'lat text, ' +
      'ln text)', function () { console.log('Created Human Virus Index'); cb(); });
  },
  function (cb) {
    db.exec('CREATE TABLE IF NOT EXISTS meeting_count (' +
      'kissedOn uuid, ' +
      'kissedBy uuid, ' +
      'count int, ' +
      'PRIMARY KEY (kissedOn, kissedBy))', function () { cb(); });
  },
  function (cb) {
    db.exec('ALTER TABLE humans ADD COLUMN infectedBy uuid', function (err,res) {
      console.log('Errors are: ' + err);
      console.log('Res are: ' + res);
      cb();
    });
  },
  function (cb) {
    db.exec('CREATE INDEX kisses_kissedOn on kisses(kissedOn)', function () { cb(); });
  },
  function (cb) {
    db.exec('CREATE INDEX kisses_kissedBy on kisses(kissedBy)', function () { cb(); });
  },
  function () {
    db.close();
  }
]);
