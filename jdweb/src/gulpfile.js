var gulp = require('gulp'); //引入gulp插件
var html=require('gulp-minify-html');//引入html压缩插件
var sass=require('gulp-sass'); //引入sass插件
var css=require('gulp-minify-css');//引入css压缩插件
var connect=require('gulp-connect');//配置自刷新插件
var jshint=require('gulp-jshint');//js错误检测
var concat=require('gulp-connect');//js代码合并
var ugligy=require('gulp-uglify');//js压缩插件
var rename=require('gulp-rename');//重命名插件
var imagemin=require('gulp-imagemin');//图片压缩插件
// gulp.task('copyhtml',function(){
//     gulp.src('*.html').pipe(gulp.dest('../dist/'));
// });
// gulp.task('watchcopyhtml',function () {
//     gulp.watch('*.html',function () {
//         gulp.run('copyhtml');
//     })
// });
//一 压缩HTML
gulp.task('uglifyhtml',function () {//压缩html
    gulp.src('html/index.html').pipe(html()).pipe(gulp.dest('../dist/html/'));
});
gulp.task('watchhtml',function () { //监听压缩
    gulp.watch('html/index.html',function(){
        gulp.run('uglifyhtml');
    })
}) ;
//二 编译sass
 gulp.task('sass',function () {
     gulp.src('scss/*scss').pipe(sass()).pipe(gulp.dest('./css/'));
 }) ;
 gulp.task('watchsass',function () {
     gulp.watch('scss/*scss',function () {
         gulp.run('sass');
     })
 });
 //三压缩css
 gulp.task('css',function () {
    gulp.src('css/index.css').pipe(css()).pipe(gulp.dest('../dist/css/'))
 });
 gulp.task('watchcss',function(){
    gulp.watch('css/index.css',function(){
        gulp.run('css');
    })
 });
 //四页面自刷新
 // gulp.task('connect',function () {
 //    connect.server({
 //        port:8888,
 //        livereload:true
 //    });
 // });
 // gulp.task('connecthtml',function () {
 //    gulp.src(['html/index.html','css/index.css']).pipe(connect.reload());
 // });
 // gulp.task('watchconnect',function () {
 //    gulp.watch(['html/index.html','css/index.css'],['connecthtml']);
 // });
 // gulp.task('imagemin',function () {
 //      gulp.src('img/*.png')
 //          .pipe(imagemin())
 //          .pipe(gulp.dest('../dist/img'));
 // });
gulp.task('default',['watchhtml','watchsass','watchcss']);

// gulp.task('css',function () {
//      gulp.src('css/index.css').pipe(css()).pipe(gulp.dest('../dist/css/'))
//  });

// gulp.task('watchcss',function(){
//    gulp.watch('css/index.css',function(){
//        gulp.run('css');
//    })
// });

// gulp.task('default',['watchcopyhtml','watchhtml','watchsass','watchcss']);