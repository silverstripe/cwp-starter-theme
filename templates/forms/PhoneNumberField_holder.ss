<%-- Matches the FormFieldLabel include, but without the "for" attribute --%>
<% if $Title %>
    <label class="control-label" id="title-{$ID}">
        {$Title}
        <% if $Required %>
            <span class="required help-text">(<%t CWP_Form.RequiredLabel "required" %>)</span>
        <% end_if %>
    </label>
<% end_if %>

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
