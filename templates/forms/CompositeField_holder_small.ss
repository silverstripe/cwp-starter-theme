<$Tag id="{$HolderID.ATT}" class="CompositeField $ExtraClass.ATT <% if $ColumnCount %>multicolumn<% end_if %> {$MessageClass}">
    <% if $Tag == "fieldset" && $Legend %>
        <legend>{$Legend.XML}</legend>
    <% end_if %>
    <% loop $FieldList %>
        <% if $ColumnCount %>
            <div class="column-{$ColumnCount.ATT} {$FirstLast.ATT}">
                {$SmallFieldHolder}
            </div>
        <% else %>
            {$SmallFieldHolder}
        <% end_if %>
    <% end_loop %>
</$Tag>
