<fieldset role="radiogroup" <% if $Required %>aria-required="true"<% end_if %> >
    <ul $getAttributesHTML('class', 'aria-required', 'required') class="$ExtraClass list-unstyled">
        <% if $Options %>
            <% loop $Options %>
                <li class="{$Class.ATT} radio">
                    <label for="{$ID}" id="option-title-{$ID}">
                        <input id="{$ID.ATT}" name="{$Name.ATT}" type="radio"
                            value="{$Value.ATT}" aria-labelledby="option-title-{$ID}"
                            <% if $IsChecked %>checked="checked"<% end_if %>
                            <% if $IsDisabled %>disabled="disabled"<% end_if %>
                            <% if $Up.Required %>required="required"<% end_if %> />
                        {$Title}
                    </label>
                </li>
            <% end_loop %>
        <% else %>
            <li><%t CWP_Form.NoOptions "No options available" %></li>
        <% end_if %>
    </ul>
</fieldset>
