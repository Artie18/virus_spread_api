var db = process.env.DB || require('../../config.json').db || 'SQLite3';

export.create = fuction(modelName, params) {
  var keysStr = '( ';
  var valsStr = '( ';
  Object.keys(params).forEach(function (k) {
    keysStr += k + ', ';
    valsStr += '?, ';
  });
  keysStr += ')';
  valsStr += ')';
  return "INSTER INTO " + modelName + ' ' + keysStr + ' VALUES ' + valsStr;
}

export.find = function(modelName) {
  return "SELECT * FROM " + modelName + " WHERE id = ?;";
}

export.updateAttributes = function(modelName, id, params) {
  var keysStr = ' ';
  Object.keys(params).forEach(function (k) {
    keysStr += ', ' + k + ' = ?'
  });
  return "UPDATE " + modelName + "SET " + keysStr + " WHERE id = ?;";
}



