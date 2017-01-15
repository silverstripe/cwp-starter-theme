<div class="container">
    <div class="row">
        <section class="col-md-6">
            $Breadcrumbs
        </section>
        <section class="col-md-6">
            <% include ShareLinks %>
        </section>
    </div>
    <div class="row">
        <section class="<% if $Menu(2) %>col-md-8<% else %>col-md-12<% end_if %>">
            <%-- Hero Area --%>
            <h1>$Title</h1>
            <div class="row">
            <% if $Quicklinks %>
                <% include Quicklinks %>
            <% end_if %>
            <% if $FeatureOneTitle  || $FeatureTwoTitle %>
                <% include Features %>
            <% end_if %>
            </div>
        </section>
        <% if $Menu(2) %>
            <aside class="col-md-4">
                <% include SidebarNav %>
            </aside>
        <% end_if %>
        <div class="col-xs-12">
            $Form
        </div>
    </div>
</div>
