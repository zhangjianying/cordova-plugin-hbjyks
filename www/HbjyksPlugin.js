var exec = require('cordova/exec')
var HbjyksPlugin = {
  open: function(url) {
    exec(function() {}, function() {}, 'HbjyksPlugin', 'open', [url])
  }
}
module.exports = HbjyksPlugin
