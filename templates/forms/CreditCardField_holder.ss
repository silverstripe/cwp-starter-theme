<% include FormFieldLabel HideForAttribute=true %>

<div id="{$HolderID.ATT}" class="field form-group {$ExtraClass} <% if $Message %>has-error<% end_if %>">
    {$Field}
    <% include FormFieldMessage %>
    <% include FormFieldDescription %>
</div>
