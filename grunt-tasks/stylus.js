module.exports = {
  default: {
    options: {
      compress: false,
      import: ['/Users/dina/src/genesis/assets/stylesheets/base/index.styl'],
      urlfunc: 'data-uri',
      use: [require( "kouto-swiss" )]
    },
    files: [{
      expand: true,
      cwd: 'assets/stylesheets/',
      src: ['**/*.styl'],
      dest: 'public/stylesheets/',
      ext: '.css'
    }]
  }
};