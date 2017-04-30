var gulp = require('gulp'),
	concat = require('gulp-concat'),
	uglify = require('gulp-uglify'),
	rename = require('gulp-rename'),
	jshint = require('gulp-jshint'),
	compass = require('gulp-compass'),
	sass = require('gulp-sass'),
	minify = require('gulp-minify'),
	livereload = require('gulp-livereload');

function handleError(err) {
  console.log(err.toString());
  this.emit('end');
}

gulp.task('minify', function() {
	return gulp.src([
			'web/js/helpers.js',
			'web/js/app.js',
			'web/js/services/*.js',
			'web/js/directives/table-elements/*.js',
			'web/js/directives/table/*.js',
			'web/js/directives/fields/*.js',
			'web/js/directives/*.js',
			'web/js/controllers/*.js'
		])
		.on('error', handleError)
		.pipe(jshint().on('error', handleError))
		.pipe(jshint.reporter('default'))
		.pipe(concat('app.min.js').on('error', handleError))
		// .pipe(minify())
		// .pipe(uglify({output: { beautify: true }})).on('error', handleError)
		.pipe(uglify()).on('error', handleError)
		.pipe(gulp.dest('web/js/dist/'))
		.pipe(livereload());

});

gulp.task('bootstrap' , function() {
	gulp.src(['web/scss/bootstrap/bootstrap.scss'])
		.pipe(sass({outputStyle: 'compressed'})).on('error', handleError)
	    .pipe(rename('bootstrap.min.css'))
	    .pipe(gulp.dest('web/css'));
});

gulp.task('compass', function() {
  gulp.src('web/scss/*.scss')
    .pipe(compass({
      config_file: 'web/config.rb',
      css: 'web/css',
      sass: 'web/scss'
    }).on('error', handleError))
    .pipe(gulp.dest('web/css'))
    .pipe(livereload());
});

gulp.task('html-livereload', function() {
	gulp.src([
		'web/views/*.html',
		'web/js/directives/templates/*.html'
	])
	.pipe(livereload());
});


gulp.task('default', function() {
	livereload.listen();
	gulp.watch("web/js/**/*.js", ['minify']);
	gulp.watch("web/scss/**/*.scss", ['compass']);
	gulp.watch("web/views/*.html", ['html-livereload']);
	gulp.watch("web/js/directives/templates/*.html", ['html-livereload']);
});

