module.exports = {
  build: {
    files: [{
      expand: true,
      cwd: 'public/',
      src: ['*.html'],
      dest: 'build/'
    },
    {
      expand: true,
      cwd: 'public/images/',
      src: ['**/**/*.{png,jpg,gif,svg}'],
      dest: 'build/images/'
    },
    {
      expand: true,
      cwd: 'public/fonts/',
      src: ['**'],
      dest: 'build/fonts/'
    },
    {
      expand: true,
      cwd: 'public/video/',
      src: ['**'],
      dest: 'build/video/'
    },
    {
      expand: true,
      cwd: 'public/javascripts/',
      src: ['jquery.min.js'],
      dest: 'build/javascripts/'
    }]
  },
  public: {
    files: [{
      expand: true,
      cwd: 'assets/fonts/',
      src: ['*.{eot,svg,ttf,woff,woff2}'],
      dest: 'public/fonts/'
    },
    {
      expand: true,
      cwd: 'assets/video/',
      src: ['*.{mp4,webm}'],
      dest: 'public/video/'
    },
    {
      expand: true,
      cwd: 'bower_components/jquery/dist/',
      src: ['jquery.min.js'],
      dest: 'public/javascripts/'
    },
    {
      expand: true,
      cwd: 'assets/javascripts/vendor/',
      src: ['*.js'],
      dest: 'public/javascripts/'
    }]
  }
};