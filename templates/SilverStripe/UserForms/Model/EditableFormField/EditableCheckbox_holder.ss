<div id="$Name" class="field form-group {$ExtraClass.ATT}">
    <div class="form-check">
        {$Field}
        <label class="form-check-label" for="{$ID}">
            {$Title}
            <% if $Required %>
                <span class="required help-text">(<%t CWP_Form.RequiredLabel "required" %>)</span>
            <% end_if %>
        </label>
        <% include FormFieldMessage %>
        <% include FormFieldDescription %>
    </div>
</div>
