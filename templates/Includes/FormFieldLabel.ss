<% if $Title %>
    <label class="control-label" for="{$ID}" id="title-{$ID}">
        {$Title}
        <% if $Required %>
            <span class="required help-text">(<%t CWP_Form.RequiredLabel "required" %>)</span>
        <% end_if %>
    </label>
<% end_if %>
