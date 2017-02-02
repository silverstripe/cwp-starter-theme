<% if $Message %>
    <div id="{$ID}-message" class="message alert <% if $MessageType == "required" %>alert-danger<% else %>alert-warning<% end_if %>" role="alert">
        {$Message}
    </div>
<% end_if %>
