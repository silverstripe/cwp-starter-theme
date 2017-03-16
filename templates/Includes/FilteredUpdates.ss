<% loop $FilteredUpdates(10) %>
    <article class="news-events-article clearfix">

        <% if $FeaturedImage %>
            <figure class="pull-right news-events-item-figure">
                $FeaturedImage.SetHeight(150)
            </figure>
        <% end_if %>

        <header>
            <h2 class="h3"><a title="$Title" href="$Link">$Title</a></h2>
        </header>

        <% if $Up.ControllerName == "EventHolder" %>

            <% if $Date %>
                <p class="meta-info">
                    <% if $Location %>
                        $NiceLocation,
                    <% end_if %>
                    <% if $Date %>
                        <time datetime="$Date">$Date.Format(Y/m/d) <% if $StartTime %>$StartTime.Nice <% if $EndTime %>- $EndTime.Nice <% end_if %><% end_if %></time>
                    <% end_if %>
                </p>
            <% end_if %>

        <% else_if $Up.ControllerName == "NewsHolder" %>

            <% if $Date || $Author %>
                <p class="meta-info">
                    <% if $Date %>
                        <time datetime="$Date">$Date.nice <% if $StartTime %>$StartTime.Nice <% end_if %>
                        </time>
                    <% end_if %>
                    <% if $Author %>by {$Author}<% end_if %>
                </p>
            <% end_if %>

        <% end_if %>

        <p>
            <% if $Abstract %>
                $Abstract
            <% else %>
                $Content.LimitWordCount
            <% end_if %>
        </p>

    </article>
<% end_loop %>

<% with $FilteredUpdates(10) %>
    <% include Pagination %>
<% end_with %>
