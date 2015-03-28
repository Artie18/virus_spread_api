var db = require('../lib/cassandra-api').db;

db.exec('CREATE TABLE IF NOT EXISTS humans (' +
  'id uuid PRIMARY KEY, ' +
  'name text, ' +
  'sickWith set<text>, ' +
  'gender text, ' +
  'age int )', function () { console.log('Created humans')})

db.exec('CREATE TABLE IF NOT EXISTS viruses (' +
  'title text PRIMARY KEY, ' +
  'description text)', function () { console.log('Created Viruses')})

db.exec('CREATE TABLE IF NOT EXISTS kisses (' +
  'id uuid, ' +
  'lt text, ' +
  'ln text, ' +
  'time timestamp, ' +
  'kissedBy uuid, ' +
  'kissedOn uuid, ' +
  'PRIMARY KEY (kissedBy, kissedOn, id) )', function () { console.log('Created Kisses')})

db.exec('CREATE TABLE IF NOT EXISTS points (' +
  'id uuid PRIMARY KEY, ' +
  'lt text, ' +
  'ln text, ' +
  'visitedBy uuid)', function () { console.log('Created Points')})

db.exec('CREATE TABLE IF NOT EXISTS markers (' +
  'id uuid PRIMARY KEY, ' +
  'lt text, ' +
  'ln text)', function () { console.log('Created Points')})

db.exec('CREATE TABLE IF NOT EXISTS human_virus_index (' +
  'id uuid PRIMARY KEY, ' +
  'humaId uuid, ' +
  'virusId text, ' +
  'time timestamp, ' +
  'lat text, ' +
  'ln text)', function () { console.log('Created Human Virus Index')});

db.exec('CREATE TABLE IF NOT EXISTS meeting_count (' +
  'kissedOn uuid, ' +
  'kissedBy uuid, ' +
  'count int, ' +
  'PRIMARY KEY (kissedOn, kissedBy))', function () { });

db.exec('ALTER TABLE humans ADD infectedBy uuid', function () { });
db.exec('CREATE INDEX kisses_kissedOn on kisses(kissedOn)', function () {});
db.exec('CREATE INDEX kisses_kissedBy on kisses(kissedBy)', function () {});

//create index user_accounts_country on user_accounts(country);
