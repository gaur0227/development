var gulp = require('gulp');
var compass = require('gulp-compass');

//compass
gulp.task('compass', function(){
  gulp.src('sass/**/*.scss').pipe(compass({
    config_file: 'config.rb',
    comments: false,
    css: 'css/',
    sass: 'sass/'
  }));
});
