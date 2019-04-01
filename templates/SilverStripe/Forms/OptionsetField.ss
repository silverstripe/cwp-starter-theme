<fieldset role="radiogroup" <% if $Required %>aria-required="true"<% end_if %> >
    <ul $getAttributesHTML('class', 'aria-required', 'required') class="$ExtraClass list-unstyled">
        <% if $Options %>
            <% loop $Options %>
                <li class="{$Class.ATT} radio">
                    <input id="{$ID.ATT}" name="{$Name.ATT}" type="radio"
                        value="{$Value.ATT}" aria-labelledby="option-title-{$ID}"
                        class="form-check-input"
                        <% if $isChecked %>checked="checked"<% end_if %>
                        <% if $isDisabled %>disabled="disabled"<% end_if %>
                        <% if $Up.Required %>required="required"<% end_if %> />
                    <label for="{$ID}" class="form-check-label" id="option-title-{$ID}">
                        {$Title}
                    </label>
                </li>
            <% end_loop %>
        <% else %>
            <li><%t CWP_Form.NoOptions "No options available" %></li>
        <% end_if %>
    </ul>
</fieldset>
