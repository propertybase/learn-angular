'use strict'

gulp            = require 'gulp'
$               = require('gulp-load-plugins')()
del             = require 'del'
run             = require 'run-sequence'

gulp.task 'hello', ->
  $.util.log "Hello World!"

gulp.task 'clean', (callback) ->
  del ['.tmp'], callback

gulp.task 'coffee', ->
  gulp.src ['./app/js/**/*.coffee']
    .pipe $.coffee({bare:true}).on('error', $.util.log)
    .pipe gulp.dest '.tmp/js'

gulp.task 'watch:coffee', ->
  gulp.watch ['./app/js/**/*.coffee'], ['build']

# --------------------------------

gulp.task 'build', ->
  run 'clean', 'coffee'

gulp.task 'default', ->
  run 'clean', 'coffee', 'watch:coffee'
