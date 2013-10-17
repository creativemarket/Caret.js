module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    bower_path: 'bower_components'

    jasmine:
      src: 'src/*.js'
      options:
        vendor: [
          '<%= bower_path %>/jquery/jquery.min.js',
          '<%= bower_path %>/jasmine-jquery/lib/jasmine-jquery.js'
          ]
        specs: 'spec/javascripts/*.js'
        # keepRunner: true

    uglify:
      options:
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
      build:
        files:
          'build/<%= pkg.name %>.min.js': ['src/<%= pkg.name %>.js']

    coffee:
      compileWithMaps:
        options:
          sourceMap: true
        files:
          'src/<%= pkg.name %>.js': 'src/<%= pkg.name %>.coffee'

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-jasmine'

  grunt.registerTask 'ugly', ['coffee', 'uglify']
  grunt.registerTask 'default', ['coffee', 'jasmine', 'uglify']
