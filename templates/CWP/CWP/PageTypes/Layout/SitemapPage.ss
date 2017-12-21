<div class="container layout">
    <div class="row">
        <div class="col-md-12">
            <h1 class="page-header">$Title</h1>
        </div>
        <div class="col-md-9">
            <div class="clearfix">
                <% if $Content.RichLinks %>
                $Content.RichLinks
                <% else %>
                $Content
                <% end_if %>
            </div>

            <ul class="sitemap list-unstyled" role="tablist">
                <% if $SelectedPage %>
                    <% loop $SelectedPage.Children %>
                        <li role="tab" data-pagetype="$ClassName" class="$FirstLast sitemap-initial class-$ClassName">
                            <% include SitemapNode %>
                        </li>
                    <% end_loop %>
                <% else %>
                    <% loop Menu(1) %>
                        <li role="tab" data-pagetype="$ClassName" class="$FirstLast sitemap-initial class-$ClassName">
                            <% include SitemapNode %>
                        </li>
                    <% end_loop %>
                <% end_if %>
            </ul>

            $Form
            $CommentsForm
        </div>
        <% if Menu(2) %>
            <aside class="col-md-3">
                <% include SidebarNav %>
            </aside>
        <% end_if %>
    </div>
</div>
