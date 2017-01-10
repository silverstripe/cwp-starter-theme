## JS Code Style

We follow the [AirBnB JS code style guide](http://airbnb.io/javascript), which we enforce with a git pre-commit hook:

```sh
#!/bin/sh
node_modules/.bin/eslint src/js --fix
```

Create the file `.git/hooks/pre-commit`, and paste this code into it. Your JS code will then be automatically validated and fixed before it can be committed to the repository, ensuring everyone's code conforms to the standard. You can also trigger this command each time you save files, but the results will be the same either way.
