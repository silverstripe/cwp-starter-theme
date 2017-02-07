## Working With Standards

In his book [Clean Code](https://www.amazon.com/dp/0132350882), Robert Martin talks about the importance of reading code vs. writing code. That what we write needs to be entirely focussed on being easy to read and understand. That writing something succinctly is a waste of time if the effort makes understanding it harder.

That's the main reason we've opted to build the theme using [PSR-2](http://www.php-fig.org/psr/psr-2/) and [AirBnB](https://github.com/airbnb/javascript) code styles. You don't have to use these, in your project, but if you do: all your code will resemble the style used in the PHP and JS theme files.

Let's look at how to use and automate these standards...

## PHP linting and fixing

Integrated development environments (like [PHPStorm](https://www.jetbrains.com/phpstorm/)) have built-in support for automating various aspects of standards compliance, but not everyone uses these. And what about when an edit is made in a strange environment, like a remote server?

Luckily, others have solved this problem. Take, for instance, the `php-cs-fixer` library, installed with:

```
composer require --dev friendsofphp/php-cs-fixer
```

This library provides a binary of sorts, aimed at listing and correcting errant PHP code style:

```
vendor/bin/php-cs-fixer fix src
```

It scans the PHP files (in `src`) and fixes their style as best it can.

## Git hooks

We've taken it a step further by introducing [Git hooks](https://git-scm.com/book/be/v2/Customizing-Git-Git-Hooks). Before we look at that code, let's talk a bit about Git:

```
git diff --cached --name-status --diff-filter=ACM
```

Inside a git repository, if you add files for a commit, the above command will list them. It's like saying; "tell me all the files that I'm about to commit to the repository".

Given this list, it's possible to find all PHP files we're about to introduce, and run them through the linter/fixer:

```php
#!/usr/bin/php
<?php

exec(
  "git diff --cached --name-status --diff-filter=ACM",
  $output
);

foreach ($output as $line) {
  $file = trim(substr($line, 1));
  $extension = pathinfo($fileName, PATHINFO_EXTENSION);

  if ($extension === "php") {
    $escaped = escapeshellarg($file);
    exec("php -l {$escaped}", $output, $return);

    if ($result != 0) {
        echo implode("\n", $output), "\n";
        exit(1);
    }

    $binary = "vendor/bin/php-cs-fixer";
    exec("{$binary} --using-cache=no fix {$file}");
    exec("git add {$file}");
  }
}

exit(0);
```

> The irony in fitting this code to a narrower screen, is that it doesn't conform to PSR-2!

This script can be run (after a call to `chmod +x pre-commit`), and it'll go through all files about to be committed, linting and fixing them. Once they're listed and fixed, they're added back to the index, so that they can be committed.

Run as a pre-commit Git hook, this means all PHP files are automatically checked and corrected before a commit can be successfully completed. If there are syntax errors in your code, they can't be committed to the repository.

This file needs to be created as `.git/hooks/pre-commit`. You can find example hook files in that folder, but none of them are automatically enabled, as the file names must match the events they target: `pre-commit.sample` → `pre-commit`.

> You can learn more about Git hooks, in the [documentation](https://git-scm.com/book/be/v2/Customizing-Git-Git-Hooks).

## JS linting and fixing

Similarly, we've applied the AirBnB JS code style guide, using [ESLint](https://github.com/eslint/eslint):

```
npm install --save-dev babel-eslint
npm install --save-dev eslint
npm install --save-dev eslint-config-airbnb
npm install --save-dev eslint-plugin-import
npm install --save-dev eslint-plugin-jsx-a11y
npm install --save-dev eslint-plugin-react
```

> This assumes you're going for AirBnB JS code style. You can, of course, configure ESLint to your preferred standard.

It would also help if you configured ESLint to allow global variables (like `window` and `document`):

```js
{
    "extends": "airbnb",
    "env": {
        "browser": true,
        "node": true
    }
}
```

Since we already have a PHP Git hook file, we need to run ESLint via PHP:

```php
exec("node_modules/.bin/eslint assets/js --fix")
```

You can also run Javascript linting manually:

```
npm run-script lint
```

Once again, let me stress that you don't have to use these if you don't want to. I've just described what the development team, who made the new theme, are doing on their machines. Perhaps you'd find these tools useful on other projects as well. We certainly have!
