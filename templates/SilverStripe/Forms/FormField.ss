<% if $IsReadonly %>
    <span id="{$ID.ATT}" class="{$ExtraClass.ATT}">{$Value.XML}</span>
<% else %>
    <input {$getAttributesHTML('class')} class="{$ExtraClass.ATT} form-control" <% include AriaAttributes %> />
<% end_if %>
