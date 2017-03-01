<% include Carousel %>
<div class="home-page">
    <div class="container">
        <% if $Content %>
            <section class="col-md-12">
                <h1>$Title</h1>
                $Content.RichLinks
            </section>
        <% end_if %>
    </div>
</div>
<% include PageUtilities %>
