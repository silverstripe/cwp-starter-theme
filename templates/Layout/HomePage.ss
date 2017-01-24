<div class="home-page">
    <% include Jumbotron %>
    <div class="container">
        <div class="row">
            <% include Quicklinks %>
            <% include Features %>
        </div>
        <div class="row push-down">
            <div class="col-sm-6 text-left">
                <% if $AtomLink %>
                    <a href="$AtomLink" title="<%t CWP.Home.Subscribe "Subscribe" %>"><%t CWP.Home.Subscribe "Subscribe" %></a>
                <% else_if $RSSLink %>
                    <a href="$RSSLink" title="<%t CWP.Home.Subscribe "Subscribe" %>"><%t CWP.Home.Subscribe "Subscribe" %></a>
                <% else_if $DefaultAtomLink %>
                    <a href="$DefaultAtomLink" title="<%t CWP.Home.Subscribe "Subscribe" %>"><%t CWP.Home.Subscribe "Subscribe" %></a>
                <% else_if $DefaultRSSLink %>
                    <a href="$DefaultRSSLink" title="<%t CWP.Home.Subscribe "Subscribe" %>"><%t CWP.Home.Subscribe "Subscribe" %></a>
                <% end_if %>
                <% if $PdfLink %>
                    <a href="$PdfLink" class="pdf" title="<%t CWP.Home.PDF "Export PDF" %>"><%t CWP.Home.PDF "Export PDF" %></a>
                <% end_if %>
            </div>
            <div class="col-sm-6 text-right hidden-xs">
                <% include LastModified %>
            </div>
            <div class="col-xs-12 text-left visible-xs">
                <% include LastModified %>
            </div>
        </div>
    </div>
</div>
