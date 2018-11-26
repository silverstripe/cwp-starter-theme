<span id="{$HolderID.ATT}" class="form-group row {$ExtraClass.ATT} <% if $Message %>has-error<% end_if %>">
    <% include FormFieldLabel %>
    {$Field}
    <% include FormFieldMessage %>
    <% include FormFieldDescription %>
</span>
