<% if $Title %>
    <label for="{$ID}" id="{$ID}-label">
        {$Title}
        <% if $Required %>
            <span class="required help-text">(required)</span>
        <% end_if %>
    </label>
<% end_if %>
