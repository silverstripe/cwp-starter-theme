<% if $LastEdited %>
    <p class="page-utilities-last-modified"><%t Cwp.LastModified "Last modified" %>: <time datetime="$LastEdited.Format(Y-m-d)">{$LastEdited.Format(jS F Y)}</time></p>
<% end_if %>
