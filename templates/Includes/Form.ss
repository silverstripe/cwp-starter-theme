<% if $IncludeFormTag %><form $AttributesHTML><% end_if %>
    <% if $Message %>
        <p id="{$FormName}_error" class="alert alert-$MessageType">$Message</p>
    <% else %>
        <p id="{$FormName}_error" style="display: none"></p>
    <% end_if %>
    <% if $Fields %>
        <div class="fields">
            <% loop $Fields %>
                $FieldHolder
            <% end_loop %>
        </div>
    <% end_if %>
    <% if $Actions %>
        <div class="actions">
            <% loop $Actions %>
                $Field
            <% end_loop %>
        </div>
    <% end_if %>
<% if $IncludeFormTag %></form><% end_if %>
