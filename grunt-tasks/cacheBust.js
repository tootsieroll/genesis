module.exports = {

  options: {
    encoding: 'utf8',
    algorithm: 'md5',
    length: 16,
    deleteOriginals: true
  },
  assets: {
    files: [{
      baseDir: 'build/',
      src: ['build/stylesheets/application.css', 'build/javascripts/application.js']
    },
    {
      baseDir: 'build/',
      src: ['build/index.html']
    }]
  }

};