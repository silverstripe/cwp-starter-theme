<div id="$Name" class="form-group field<% if $extraClass %> $extraClass<% end_if %>">
    <% if $Title %><label class="control-label left" for="$ID">$Title</label><% end_if %>
    $Field
    <% include FormFieldMessage %>
    <% include FormFieldDescription %>
</div>
