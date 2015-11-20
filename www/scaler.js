var exec = require('cordova/exec');

var Scaler = {
  viewportZoom: function(options) {
    if (! options) {
      options = { animate: true };
    }
    exec(null, null, 'Scaler', 'viewportZoom', [options]);
  },

  zoom: function(options) {
    if (! options) {
      options = { animate: true };
    }
    exec(null, null, 'Scaler', 'zoom', [options]);
  }
};

module.exports = Scaler;
