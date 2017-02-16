<div id="{$HolderID.ATT}" class="field {$ExtraClass.ATT} {$MessageClass}">
    <% include FormFieldLabel %>
    <div class="field-group <% if $Zebra %>field-group-zebra<% end_if %>">
        <% loop $FieldList %>
            <div class="field-group-field {$FirstLast.ATT} {$EvenOdd.ATT}">
                {$SmallFieldHolder}
            </div>
        <% end_loop %>
    </div>
    <% include FormFieldMessage %>
    <% include FormFieldDescription %>
</div>
