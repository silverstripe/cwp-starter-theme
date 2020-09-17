<fieldset id="$Name" class="field form-group<% if $extraClass %> $extraClass<% end_if %>"<% if $RightTitle %> aria-describedby="{$Name}_right_title"<% end_if %>>
    <%-- not using FormFieldLabel since this is a legend element --%>
    <% if $Title %>
        <legend class="left">
            $Title
            <span class="required help-text" aria-required="true">(required)</span>
        </legend>
    <% end_if %>
    {$Field}
    <% include FormFieldMessage %>
    <% include FormFieldDescription %>
</fieldset>
