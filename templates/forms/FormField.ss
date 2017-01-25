<% if $IsReadonly %>
    <span id="{$ID.ATT}" class="{$ExtraClass.ATT}">{$Value.XML}</span>
<% else %>
    <input {$AttributesHTML} />
<% end_if %>
