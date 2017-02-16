<% if $Children %>
    <a class="page-toggle collapsed sitemap__collapse-action"
        data-loading-message="<%t CWP.LoadingMessage "Please wait" %>"
        data-page-id="$ID"
        role="button"
        data-toggle="collapse"
        href="#children-$ID"
        aria-expanded="false"
        aria-controls="children-$ID">
        <span class="toggleIco fa fa-plus"></span>
        <span class="sr-only" data-collapse-text="<%t CWP.CollapseLabel "Collapse section" %>">
            <%t CWP.ExpandLabel "Expand section" %>
        </span>
    </a>
<% end_if %>

<div class="page-toggle__children">
    <a href="$Link" class="sitemap-link" title="Go to $MenuTitle page">$MenuTitle</a>

    <%-- Children are populated via AJAX --%>
    <ul id="children-$ID" class="collapse"></ul>
</div>
