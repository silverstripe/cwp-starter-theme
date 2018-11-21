const mix = require("laravel-mix");
// let path = require('path');

mix.webpackConfig({
  externals: {
    '$': 'jQuery',
    'jquery': 'jQuery'
  }
});

// //this fixes an API change introduced at //https://github.com/webpack/webpack/issues/4549
// mix.setPublicPath(
//   path.resolve(__dirname, 'dist')
// );

mix.js("src/js/main.js", "dist/js/main.js");
mix
  .sass("src/scss/main.scss", "dist/css/main.css")
  .sass("src/scss/editor.scss", "dist/css/editor.css")
  .options({ processCssUrls: false });

mix.copy("src/images", "images");
