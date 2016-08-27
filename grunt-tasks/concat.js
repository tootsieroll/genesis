module.exports = {
  scripts: {
    options: {
      separator: ';',
    },
    src: ['public/javascripts/vendor.js',
          'public/javascripts/app.templates.js',
          'public/javascripts/app.js'],
    dest: 'public/javascripts/application.js'
  },
  styles: {
    src: ['public/stylesheets/global/reset.css',
          'public/stylesheets/vendor.css',
          'public/stylesheets/global/global.css',
          'public/stylesheets/layout/*.css',
          'public/stylesheets/blocks/*.css',
          'public/stylesheets/structures/*.css',
          'public/stylesheets/overloads/*.css',
          'public/stylesheets/global/reserved.css'],
    dest: 'public/stylesheets/application.css'
  }
};