<% if $UseButtonTag %>
    <button $getAttributesHTML('class') class="btn btn-default {$ExtraClass.ATT}">
        <% if $ButtonContent %>
            {$ButtonContent.RAW}
        <% else %>
            {$Title.XML}
        <% end_if %>
    </button>
<% else %>
    <input $getAttributesHTML('class') class="btn btn-default {$ExtraClass.ATT}" />
<% end_if %>
