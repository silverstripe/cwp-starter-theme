<% if $UseButtonTag %>
    <button $getAttributesHTML('class') class="btn btn-secondary rounded {$ExtraClass.ATT}" />
        <% if $ButtonContent %>
            {$ButtonContent.RAW}
        <% else %>
            {$Title.XML}
        <% end_if %>
    </button>
<% else %>
    <input $getAttributesHTML('class') class="btn btn-secondary rounded {$ExtraClass.ATT}"
    />
<% end_if %>
