exports.help = function () {
  Array.prototype.isNull = function (){
    return this.join().replace(/,/g,'').length === 0;
  };
}