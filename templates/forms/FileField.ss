<input type="hidden" name="MAX_FILE_SIZE" value="{$MaxFileSize.ATT}" />
<input {$AttributesHTML}
    aria-describedby="<% if $Message %>{$ID}-message<% end_if %> <% if $Description %>{$ID}-description<% end_if %>"
    />
