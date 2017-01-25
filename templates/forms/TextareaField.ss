<textarea {$AttributesHTML}
    aria-describedby="<% if $Message %>{$ID}-message<% end_if %> <% if $Description %>{$ID}-description<% end_if %>"
    >{$Value}</textarea>
