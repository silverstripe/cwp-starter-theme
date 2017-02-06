# CWP Developer Theme

This is the repository for the new CWP develop theme.

## Documentation

You can find documentation about the following topics:

* [Creating a new site](docs/creating-a-new-site.md)
* [Working with standards](docs/working-with-standards.md)
* [Modifying template files](docs/modifying-template-files.md)
* [Customising front-end assets](docs/customising-front-end-assets.md)
* [Changing forms](docs/changing-forms.md)
* [Changing menus](docs/changing-menus.md)

## Versioning

This library follows [Semver](http://semver.org). According to Semver, you will be able to upgrade to any minor or patch version of this library without any breaking changes to the public API. Semver also requires that we clearly define the public API for this library.

All methods, with `public` visibility, are part of the public API. All other methods are not part of the public API. Where possible, we'll try to keep `protected` methods backwards-compatible in minor/patch versions, but if you're overriding methods then please test your work before upgrading.
