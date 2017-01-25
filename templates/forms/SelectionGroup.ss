<% if $IsReadonly %>
    <ul class="{$ExtraClass.ATT}">
        <% loop $FieldSet %>
            <% if $Selected %>
                <li {$Selected}>
                    {$RadioLabel}
                    {$FieldHolder}
                </li>
            <% end_if %>
        <% end_loop %>
    </ul>
<% else %>
    <ul class="{$ExtraClass.ATT}">
        <% loop $FieldSet %>
            <li {$Selected}>
                {$RadioButton} {$RadioLabel}
                <% if $FieldList %>
                    {$FieldHolder}
                <% end_if %>
            </li>
        <% end_loop %>
    </ul>
<% end_if %>
