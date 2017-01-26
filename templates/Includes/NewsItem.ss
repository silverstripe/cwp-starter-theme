<div>
    <address class="help-block">
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
<p><a href="$Parent.Link" title="$Parent.Title"><%t CWP.News.BACK "←  Back to the news" %></a></p>

$Form
