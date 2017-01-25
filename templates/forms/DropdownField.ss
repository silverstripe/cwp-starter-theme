<select {$AttributesHTML}
    aria-describedby="<% if $Message %>{$ID}-message<% end_if %> <% if $Description %>{$ID}-description<% end_if %>"
    >
    <% loop $Options %>
        <option value="{$Value.ATT}" <% if $Selected %>selected="selected"<% end_if %> <% if $Disabled %>disabled="disabled"<% end_if %>>
            <% if $Title %>
                {$Title.XML}
            <% else %>
                &nbsp;
            <% end_if %>
        </option>
    <% end_loop %>
</select>
