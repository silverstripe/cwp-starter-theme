<fieldset id="{$HolderID.ATT}" class="form-group {$ExtraClass.ATT}">
    <% include FormFieldMessage %>

    <% if $Title %>
	    <legend class="form-group__as-label" for="{$ID}" id="{$ID}-label">
	        {$Title}
	        <% if $Required %>
	            <span class="required help-text">(required)</span>
	        <% end_if %>
	    </legend>
	<% end_if %>

    {$Field}
    <% include FormFieldDescription %>
</fieldset>
