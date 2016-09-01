module.exports = function(grunt) {

  var _ = grunt.util._,
      path = require('path');

  var config = _.extend({},
    require('load-grunt-config')(grunt, {
        configPath: path.join(__dirname, 'grunt-tasks'),
        loadGruntTasks: true,
        init: false
      })
  );

  config.env = process.env;
  config.pkg = require("./package.json");


  // Main tasks

  grunt.registerTask('default', ['serve']);

  grunt.registerTask('build', [
                     'clean:build',
                     'public',
                     'minify',
                     'copy:build'
                    ]);

  grunt.registerTask('serve', [
                     'clean:public',
                     'public',
                     'browserSync:public',
                     'watch'
                    ]);

  grunt.registerTask('serve:build', [
                     'build',
                     'browserSync:build',
                     'watch'
                    ]);

  grunt.registerTask('deploy', ['build', 'ssh_deploy:staging']);
  // grunt.registerTask('deploy:prod', ['build', 'ssh_deploy:production']);

  // Worker task

  grunt.registerTask('public', [
                     'bower_concat',
                     'copy:public',
                     'publicTemplates',
                     'publicScripts',
                     'publicStyles',
                     'image'
                    ]);

  grunt.registerTask('publicScripts', [
                     'coffee',
                     'concat:scripts'
                    ]);

  grunt.registerTask('publicStyles', [
                     'stylus',
                     'concat:styles'
                    ]);

  grunt.registerTask('publicTemplates', [
                     'pug'
                    ]);

  grunt.registerTask('minify', [
                     'uglify',
                     'cssmin'
                    ]);

  grunt.initConfig(config);

};