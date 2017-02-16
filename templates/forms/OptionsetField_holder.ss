<fieldset id="{$HolderID.ATT}" class="form-group {$ExtraClass.ATT} {$MessageClass}">
    <% if $Title %>
	    <legend class="control-label form-group__as-label" for="{$ID}" id="{$LabelID}">
	        {$Title}
	        <% if $Required %>
	            <span class="required help-text">(<%t CWP.Form.RequiredLabel "required" %>)</span>
	        <% end_if %>
	    </legend>
	<% end_if %>

    {$Field}
    <% include FormFieldMessage %>
    <% include FormFieldDescription %>
</fieldset>
