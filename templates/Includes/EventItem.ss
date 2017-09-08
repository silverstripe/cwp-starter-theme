<footer itemscope itemtype="http://schema.org/Event">
    <address class="meta-info">
    <% if $Location %>
        $NiceLocation,
    <% end_if %>
    <% if $Date %>
        <time>
            <span itemprop="startDate" datetime="{$Date.Format('Y-m-d')}<% if $StartTime %>T{$StartTime.Format('H:i:s')}<% end_if %>">
                $Date.Format('d/m/Y') <% if $StartTime %>$StartTime.Nice<% end_if %>
            </span>
            <% if $EndTime %>
                <span itemprop="endDate" datetime="{$Date.Format('Y-m-d')}T{$EndTime.Format('H:i:s')}">- $EndTime.Nice</span>
            <% end_if %>
        </time>
    <% end_if %>
    </address>
</footer>
<% if $Content.RichLinks %>
$Content.RichLinks
<% else %>
$Content
<% end_if %>
<p><a href="$Parent.Link" title="$Parent.Title" class="hidden-print"><i class="fa fa-angle-left m-r-025" aria-hidden="true"></i> <%t CWP.Event.BACK "Back to the event listing" %></a></p>

$Form
