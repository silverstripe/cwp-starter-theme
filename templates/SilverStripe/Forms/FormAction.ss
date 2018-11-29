<% if $UseButtonTag %>
    <button $getAttributesHTML('class') class="rounded btn-secondary {$ExtraClass.ATT}" />
        <% if $ButtonContent %>
            {$ButtonContent.RAW}
        <% else %>
            {$Title.XML}
        <% end_if %>
    </button>
<% else %>
    <input $getAttributesHTML('class') class="rounded btn-secondary {$ExtraClass.ATT}"
    />
<% end_if %>
