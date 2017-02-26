<% if $Options %>
    <% loop $Options %>
        <div class="{$Class.ATT} checkbox">
            <label>
                <input
                    id="{$ID.ATT}"
                    name="{$Name.ATT}"
                    type="checkbox"
                    value="{$Value.ATT}"
                    aria-labelledby="{$Top.ID}-label"
                    <% if $IsChecked %>checked="checked"<% end_if %>
                    <% if $IsDisabled %>disabled="disabled"<% end_if %>
                    <% if $Up.Required %>required="required"<% end_if %>
                    />
                {$Title}
            </label>
        </div>
    <% end_loop %>
<% else %>
    <p class="help-block"><%t CWP.Form.NoOptions "No options available" %></p>
<% end_if %>
