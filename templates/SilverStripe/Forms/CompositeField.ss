<$Tag class="form-group CompositeField {$ExtraClass.ATT} <% if $ColumnCount %>multicolumn<% end_if %>">
    <% if $Tag == "fieldset" && $Legend %>
        <legend>{$Legend.XML}</legend>
    <% end_if %>
    <% loop $FieldList %>
        <% if $ColumnCount %>
            <div class="column-{$ColumnCount.ATT} {$FirstLast.ATT}">
                {$Field}
            </div>
        <% else %>
            {$Field}
        <% end_if %>
    <% end_loop %>
</$Tag>
