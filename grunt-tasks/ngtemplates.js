module.exports = {
  default: {
    options: {
      module: 'templates',
      standalone: true
    },
    cwd:      'public/templates/',
    src:      '**/**.html',
    dest:     'public/javascripts/app.templates.js'
  }
};