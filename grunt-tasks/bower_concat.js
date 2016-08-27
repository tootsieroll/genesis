module.exports = {
  default: {
    dest: 'public/javascripts/vendor.js',
    cssDest: 'public/stylesheets/vendor.css',
    exclude: [
      'jquery',
      'modernizr',
      'outlayer',
      'get-size',
      'fizzy-ui-utils',
      'ev-emitter',
      'matches-selector'
    ],
    bowerOptions: {
      relative: false
    }
  }
};