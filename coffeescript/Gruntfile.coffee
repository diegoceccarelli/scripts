module.exports = (grunt) ->

  fs = require 'fs'
  isModified = (filepath) ->
    now = new Date()
    modified =  fs.statSync(filepath).mtime
    return (now - modified) < 10000

  grunt.initConfig

    coffee:
      options:
        sourceMap: true
        bare: true
        force: true # needs to be added to the plugin
      all:
        expand: true
        cwd: 'static/js/'
        src: 'app.coffee'
        dest: 'static/js'
        ext: '.js'
      modified:
        expand: true
        cwd: 'static/js/'
        src: 'app.coffee'
        dest: 'static/js'
        ext: '.js'
        filter: isModified

    watch:
      coffeescript:
        files: ['static/src/*.coffee']
        tasks: ['concat', 'coffee:modified']

    concat:
        dist:
            src: [
                # main logic
                'static/src/main.coffee'

                # any others
            ]
            dest: 'static/js/app.coffee'


  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-concat'

  grunt.registerTask 'default', [
      'concat'
      'coffee:all'
      'watch'
  ]

