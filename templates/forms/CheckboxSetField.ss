<% if $Options %>
    <% loop $Options %>
        <div class="{$Class.ATT} checkbox">
            <label id="option-title-{$ID.ATT}" for="$ID.ATT">
                <input
                    id="{$ID.ATT}"
                    name="{$Name.ATT}"
                    type="checkbox"
                    value="{$Value.ATT}"
                    aria-labelledby="option-title-{$ID.ATT}"
                    <% if $IsChecked %>checked="checked"<% end_if %>
                    <% if $IsDisabled %>disabled="disabled"<% end_if %>
                    />
                {$Title}
            </label>
        </div>
    <% end_loop %>
<% else %>
    <p class="help-block"><%t CWP_Form.NoOptions "No options available" %></p>
<% end_if %>
