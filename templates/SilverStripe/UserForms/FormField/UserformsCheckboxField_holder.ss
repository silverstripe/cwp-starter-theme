<div id="$Name" class="field form-group checkbox {$ExtraClass.ATT} <% if $Message %>has-error<% end_if %>">
    <label for="{$ID}">
        {$Field}
    </label>
    <% include FormFieldMessage %>
    <% include FormFieldDescription %>
</div>
