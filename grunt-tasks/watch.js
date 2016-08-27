module.exports = {
  options: {
    spawn: false
  },
  images: {
    files: 'assets/images/**/**/*.{png,jpg,gif,svg}',
    tasks: ['image', 'bsReload:images']
  },
  styles: {
    files: ['assets/stylesheets/**/**/*.styl'],
    tasks: ['publicStyles', 'bsReload:styles']
  },
  scripts: {
    files: ['assets/javascripts/**/**/*.coffee'],
    tasks: ['publicScripts', 'bsReload:scripts']
  },
  templates: {
    files: ['assets/*.pug',
            'assets/templates/**/*.pug'],
    tasks: ['publicTemplates', 'concat:scripts', 'bsReload:all']
  }
};