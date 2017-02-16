<div {$AttributesHTML} class="{$ExtraClass.ATT}">
    <ul>
        <% loop $Tabs %>
            <li class="{$FirstLast.ATT} {$MiddleString.ATT} {$ExtraClass.ATT}">
                <a href="#{$ID.ATT}" id="tab-{$ID.ATT}">{$Title.XML}</a>
            </li>
        <% end_loop %>
    </ul>
    <% loop $Tabs %>
        <% if $Tabs %>
            {$FieldHolder}
        <% else %>
            <div {$AttributesHTML}>
                <% loop $Fields %>
                    {$FieldHolder}
                <% end_loop %>
            </div>
        <% end_if %>
    <% end_loop %>
</div>
