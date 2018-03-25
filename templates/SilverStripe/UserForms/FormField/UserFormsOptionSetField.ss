<% loop $Options %>
    <div class="$Class radio">
        <label for="$ID">
            <input id="$ID" name="$Name" type="radio" value="$Value.ATT"<% if $isChecked %>
               checked<% end_if %><% if $isDisabled %> disabled<% end_if %> <% if $Up.Required %>required<% end_if %> />
            $Title
        </label>
    </div>
<% end_loop %>
