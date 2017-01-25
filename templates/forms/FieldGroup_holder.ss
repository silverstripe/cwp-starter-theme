<div id="{$HolderID.ATT}" class="field {$ExtraClass.ATT}">
    <% include FormFieldMessage %>
    <% include FormFieldLabel %>
    <div class="field-group <% if $Zebra %>field-group-zebra<% end_if %>">
        <% loop $FieldList %>
            <div class="field-group-field {$FirstLast.ATT} {$EvenOdd.ATT}">
                {$SmallFieldHolder}
            </div>
        <% end_loop %>
    </div>
    <% include FormFieldDescription %>
</div>
