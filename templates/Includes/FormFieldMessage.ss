<% if $Message %>
    <div id="{$ID}-message" class="message alert <% if $MessageType == "required" %>alert-danger<% else %>alert-{$MessageType}<% end_if %>">
        {$Message}
    </div>
<% end_if %>
