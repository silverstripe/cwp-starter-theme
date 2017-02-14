<% if $Title %>
    <label class="control-label" for="{$ID}" id="{$LabelID}">
        {$Title}
        <% if $Required %>
            <span class="required help-text">(<%t CWP.Form.RequiredLabel "required" %>)</span>
        <% end_if %>
    </label>
<% end_if %>
