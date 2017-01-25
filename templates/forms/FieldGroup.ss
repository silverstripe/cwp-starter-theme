<div id="{$ID.ATT}" class="field-group {$ExtraClass} <% if $Zebra %>field-group-zebra<% end_if %>">
    <% loop $FieldList %>
        <div class="fieldgroup-field {$FirstLast.ATT} {$EvenOdd.ATT}">
            {$SmallFieldHolder}
        </div>
    <% end_loop %>
</div>
