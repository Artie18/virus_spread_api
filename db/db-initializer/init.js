var db = process.env.DB || require('../../config.json') || 'SQLite3';

function initSqlite() {
    require('./init-sqlite');
}

function initCassandra() {
    require('./init-cassandra');
}

switch(db) {
    case "SQLite3":
        initSqlite();
        break;
    case  "Cassandra":
        initCassandra();
        break;
    default:
        initSqlite();
        break;
}