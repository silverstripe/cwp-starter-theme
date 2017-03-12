<% include FormFieldLabel HideForAttribute=true %>

<div class="form-inline">
    <div id="{$HolderID.ATT}" class="field form-group {$ExtraClass} <% if $Message %>has-error<% end_if %>">
        <%-- Manually loop the fields, adding the "aria-labelledby" attribute --%>
        <% loop $Field.FieldList %>
            <input $getAttributesHTML('class') class="{$ExtraClass.ATT} form-control" aria-labelledby="title-{$Up.Up.ID}" />
        <% end_loop %>

        <% include FormFieldMessage %>
        <% include FormFieldDescription %>
    </div>
</div>
