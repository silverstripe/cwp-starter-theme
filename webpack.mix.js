let mix = require("laravel-mix").mix;

mix.webpackConfig({
  externals: {
    jquery: 'jQuery',
    '$': 'jQuery'
  }
});

mix.setPublicPath("dist");

mix.js("src/js/main.js", "dist/js/main.js");
mix
  .sass("src/scss/main.scss", "dist/css/main.css")
  .sass("src/scss/_editor.scss", "dist/css/editor.css");

mix.copy("node_modules/bootstrap-sass/assets/fonts/bootstrap", "dist/fonts");
mix.copy("node_modules/font-awesome/fonts", "dist/fonts");
mix.copy("src/images", "dist/images");
