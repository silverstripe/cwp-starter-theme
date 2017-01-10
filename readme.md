## JS Code Style

We follow the [AirBnB JS code style guide](http://airbnb.io/javascript), which we enforce with a git pre-commit hook:

```sh
#!/bin/sh
node_modules/.bin/eslint src/js --fix
```

Create the file `.git/hooks/pre-commit`, and paste this code into it. Your JS code will then be automatically validated and fixed before it can be committed to the repository, ensuring everyone's code conforms to the standard. You can also trigger this command each time you save files, but the results will be the same either way.

## Compiling front-end files

This project uses [Laravel Mix](https://github.com/JeffreyWay/laravel-mix) to compile source ES6 JS and SASS files into ES5 JS and CSS respectively. To trigger this, you can run the following command:

```sh
npm run build
```

This compiles JS and SASS from `src` to the respective `dist` folders. The result is a development build of the files. To build for production (only needs to be run right before releasing a new version of the project), run:

```sh
npm run package
```

if you'd like to start the file watcher (to have the build files automatically re-compile themselves when they are updated), run the following:

```sh
npm run watch
```

This is faster and more reliable than running `build` every time you make a change. If you'd like additional info about Mix, head over to [the dedicated Mix documentation](https://github.com/JeffreyWay/laravel-mix/tree/master/docs).
