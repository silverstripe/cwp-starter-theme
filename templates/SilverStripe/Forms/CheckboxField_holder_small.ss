<span id="{$HolderID.ATT}" class="form-group checkbox {$ExtraClass.ATT} <% if $Message %>has-error<% end_if %>">
    <label for="{$ID}">
        {$Field} {$Title}
    </label>
    <% include FormFieldMessage %>
</span>
