<!doctype html>
<html class="no-js" lang="$ContentLocale">
    <head>
        <% base_tag %>
        <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
        $MetaTags(false)
        <meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=10.0,initial-scale=1.0" />
        <link rel="stylesheet" href="$ThemeDir/dist/css/main.css">
    </head>
    <body class="$ClassName">
        <% include SkipLinks %>
        <header>
            <% include Header %>
            <% include MainNav %>
        </header>
        <main id="main">
            $Layout
        </main>
        <footer>
            <% include Footer %>
        </footer>
        <script src="$ThemeDir/dist/js/main.js"></script>
    </body>
</html>
