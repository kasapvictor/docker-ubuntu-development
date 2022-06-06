const browserSync = require('browser-sync').create();

browserSync.init({
    watch: true,
    server: "./src",
    port: 4000,
    open: false,
    notify: false,
    files: "./src/**/*",
});
