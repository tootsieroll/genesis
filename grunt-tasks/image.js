module.exports = {
  default: {
    files: [{
      expand: true,
      cwd: 'assets/images',
      src: ['**/*.{png,jpg,gif,svg}'],
      dest: 'public/images'
    }]
  }
};