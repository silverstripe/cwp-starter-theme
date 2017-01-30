<ul {$AttributesHTML}>
    <% if $Options %>
        <% loop $Options %>
            <li class="{$Class.ATT} radio">
                <label for="{$ID}">
                    <input id="{$ID.ATT}" name="{$Name.ATT}" type="radio" value="{$Value.ATT}" <% if $IsChecked %>checked="checked"<% end_if %> <% if $IsDisabled %>disabled="disabled"<% end_if %> <% if $Up.Required %>required="required"<% end_if %> />
                    {$Title}
                </label>
            </li>
        <% end_loop %>
    <% else %>
        <li><%t CWP.Form.NoOptions "No options available" %></li>
    <% end_if %>
</ul>
