var gulp = require('gulp'),
    compass = require('gulp-compass'),
    webserver = require('gulp-webserver');


// webserver
gulp.task('webserver', function () {
    gulp.src('.')
    .pipe(webserver({
        host: 'localhost',
        port: 8000,
        livereload: true
    }));
});

// compass
gulp.task('compass', function(){
    gulp.src('sass/**/*.scss')
    .pipe(compass({
        config_file: 'config.rb',
        comments: false,
        css: 'css/',
        sass: 'sass/'
    }));
});

//watch
gulp.task('watch', function(){
  gulp.watch('sass/*.scss',['compass']);
});

gulp.task('default', ['watch','webserver']);
