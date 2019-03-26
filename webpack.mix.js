const mix = require("laravel-mix");

mix.webpackConfig({
  externals: {
    '$': 'jQuery',
    'jquery': 'jQuery'
  },
  module: {
    rules: [{
      test: /\.m?js$/,
      use: {
        loader: 'babel-loader',
        options: {
          cacheDirectory: true,
          presets: [
            [
              'env',
              {
                modules: false,
                targets: {
                  browsers: ['> 2%'],
                  uglify: true
                }
              }
            ]
          ],
          plugins: [
            'transform-object-rest-spread',
            [
              'transform-runtime',
              {
                polyfill: false,
                helpers: false
              }
            ]
          ]
        }
      }
    }]
  }
});

mix.js('src/js/main.js', 'dist/js/main.js')

mix
  .sass("src/scss/main.scss", "dist/css/main.css")
  .sass("src/scss/editor.scss", "dist/css/editor.css")
  .options({ processCssUrls: false });

mix.copy("src/images", "images");

