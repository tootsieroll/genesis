module.exports = {
  default: {
    options: {
      mangle: false
    },
    files: {
      'build/javascripts/application.js': ['public/javascripts/application.js']
    }
  }
};