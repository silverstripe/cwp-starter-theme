<footer itemscope itemtype="http://schema.org/NewsArticle">
    <address class="meta-info">
    <% if $Author %>
        $Author,
    <% end_if %>
    <% if $Date %>
        <time datetime="{$Date.Format(c)}" itemprop="datePublished">$Date.Nice</time>
    <% end_if %>
    </address>
</footer>
<% if $FeaturedImage %>
    <figure class="right">
        $FeaturedImage.SetWidth(300)
    </figure>
<% end_if %>
<% if $Content.RichLinks %>
$Content.RichLinks
<% else %>
$Content
<% end_if %>
<p><a href="$Parent.Link" title="$Parent.Title" class="hidden-print"><i class="fa fa-angle-left m-r-025" aria-hidden="true"></i><%t CWP.News.BACK "Back to the news" %></a></p>

$Form
