<input {$AttributesHTML}
    <% if $Message || $Description %>aria-describedby="<% if $Message %>{$ID}-message<% end_if %> <% if $Description %>{$ID}-description<% end_if %>"<% end_if %>
    />
