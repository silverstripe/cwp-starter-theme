# CWP Starter Theme

This is the repository for the CWP "starter" theme. This theme is a highly accessible Bootstrap 3 theme which you can use as a starter for your CWP project.

If you want to start with a theme that is more designed, take a look at the [Wātea theme](https://gitlab.cwp.govt.nz/cwp/watea-theme).

![Screenshot](docs/images/screenshot.jpg)

## Installation

You can install this theme with Composer:

```
composer require cwp/starter-theme
```

## Documentation

You can find documentation on how to use this theme in the CWP Developer Documentation: [Customising the starter theme](https://www.cwp.govt.nz/developer-docs/en/1.6/working_with_projects/customising_the_starter_theme/).

## Requirements

* [Composer](https://getcomposer.org)
* `cwp/cwp`: \^1.6

### Development requirements

* [Node and NPM](https://docs.npmjs.com/getting-started/installing-node)
* [Laravel-Mix](https://github.com/JeffreyWay/laravel-mix) and [Webpack](https://webpack.github.io) (via NPM)

## Versioning

This library follows [Semver](http://semver.org). According to Semver, you will be able to upgrade to any minor or patch version of this library without any breaking changes to the public API. Semver also requires that we clearly define the public API for this library.

All methods, with `public` visibility, are part of the public API. All other methods are not part of the public API. Where possible, we'll try to keep `protected` methods backwards-compatible in minor/patch versions, but if you're overriding methods then please test your work before upgrading.
