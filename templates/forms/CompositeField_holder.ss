<$Tag id="{$HolderID.ATT}" class="CompositeField {$ExtraClass.ATT} <% if $ColumnCount %>multicolumn<% end_if %> <% if $Message %>has-error<% end_if %>">
    <% if $Tag == "fieldset" && $Legend %>
        <legend>{$Legend.XML}</legend>
    <% end_if %>
    <% loop $FieldList %>
        <% if $ColumnCount %>
            <div class="column-{$ColumnCount.ATT} {$FirstLast.ATT}">
                {$FieldHolder}
            </div>
        <% else %>
            {$FieldHolder}
        <% end_if %>
    <% end_loop %>
</$Tag>
