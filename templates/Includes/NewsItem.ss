<div>
    <address class="text-muted">
        <% if $Author %>
            $Author,
        <% end_if %>
        <% if $Date %>
            <time datetime="$Date">$Date.Nice</time>
        <% end_if %>
    </address>
</div>
<% if $FeaturedImage %>
    <figure class="right">
        $FeaturedImage.SetWidth(300)
    </figure>
<% end_if %>
$Content.RichLinks
$Form
<p><a href="$Parent.Link" title="$Parent.Title"><%t CWP.News.BACK "←  Back to the news" %></a></p>
