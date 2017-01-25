<% if $Message %>
    <span id="{$ID}-message" class="message message-small alert <% if $MessageType == "required" %>alert-danger<% else %>alert-{$MessageType}<% end_if %>">
        {$Message}
    </span>
<% end_if %>
