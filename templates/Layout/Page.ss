<div class="container">
    <div class="row">
        <section class="col-lg-10 offset-lg-1">
            <div class="page-header">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
        </section>
    </div>
    <div class="row">
        <section class="col-lg-7 offset-lg-1">
            <% if $ElementalArea %>
                <%-- Support for content blocks, if enabled --%>
                <% if $ElementalArea.RichLinks %>
                    $ElementalArea.RichLinks %>
                <% else %>
                    $ElementalArea
                <% end_if %>
            <% else %>
                <%-- CMS page content --%>
                <% if $Content.RichLinks %>
                    $Content.RichLinks
                <% else %>
                    $Content
                <% end_if %>
            <% end_if %>
            $Form
            <% include RelatedPages %>
            $CommentsForm
        </section>

        <aside class="col-lg-3">
            <% include SidebarNav %>
        </aside>
    </div>
</div>
<% include PageUtilities %>
