<div class="container layout sitemap-page">
    <div class="row">
        <section class="col-lg-10 offset-lg-1">
            <div class="page-header">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
        </section>
    </div>
    <div class="row">
        <div class="col-lg-7 offset-lg-1">
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
            <aside class="col-lg-3">
                <% include SidebarNav %>
            </aside>
        <% end_if %>
    </div>
</div>
