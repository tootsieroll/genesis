module.exports = {
  public: {
    bsFiles: {
      src: [
        "javascripts/*.js",
        "stylesheets/*.css",
        "*.html"
      ]
    },
    options: {
      watchTask: true,
      server: {
        baseDir: "./public",
        middleware: [ require('connect-history-api-fallback')() ]
      }
    }
  },
  build: {
    bsFiles: {
      src: [
        "javascripts/*.js",
        "stylesheets/*.css",
        "*.html"
      ]
    },
    options: {
      watchTask: true,
      server: {
        baseDir: "./build",
        middleware: [ require('connect-history-api-fallback')() ]
      }
    }
  }
};