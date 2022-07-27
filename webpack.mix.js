const mix = require('laravel-mix');

mix.webpackConfig({
  externals: {
    $: 'jQuery',
    jquery: 'jQuery',
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
              '@babel/preset-env',
              {
                modules: false,
                forceAllTransforms: true,
                targets: {
                  browsers: ['> 2%'],
                },
              },
            ],
          ],
        },
      },
    }],
  },
});

mix.js('src/js/main.js', 'dist/js');

mix
  .sass('src/scss/main.scss', 'dist/css')
  .sass('src/scss/editor.scss', 'dist/css')
  .options({ processCssUrls: false });

mix
  .copy('src/images', 'dist/images')
  .copy('src/fonts', 'dist/fonts')
  .copy('node_modules/jquery/dist/jquery.min.js', 'dist/js');
