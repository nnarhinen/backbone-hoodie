module.exports = (grunt) ->

  grunt.initConfig

    coffee:
      compile:
        files:
          "backbone-hoodie.js":  "backbone-hoodie.coffee"
          "test/specs.js": ["test/spec/sync.coffee"]

    watch:
      coffee:
        files: ["**/*.coffee"]
        tasks: ['coffee:compile']


  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-watch"