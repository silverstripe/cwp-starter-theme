<% if $Options.Count %>
    <% loop $Options %>
        <div class="$Class checkbox">
            <label for="$ID">
                <input id="$ID" name="$Name" type="checkbox" value="$Value.ATT"<% if $isChecked %>
                   checked="checked"<% end_if %><% if $isDisabled %> disabled="disabled"<% end_if %> />
                $Title
            </label>
        </div>
    <% end_loop %>
<% else %>
    <p><%t CWP_Form.NOOPTIONS 'No options available' %></p>
<% end_if %>
