var gulp = require('gulp'),
    compass = require('gulp-compass'),
    // plumber = require('gulp-plumber'),
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
    gulp.src('assets/sass/**/*.scss')
    // .pipe(plumber())
    .pipe(compass({
        config_file: 'config.rb',
        comments: false,
        compass : true,
        css: 'assets/css',
        sass: 'assets/sass'
    }));
});

//watch
gulp.task('watch', function(){
  gulp.watch('/assets/sass/*.scss',['compass']);
});

gulp.task('default', ['watch','webserver']);
