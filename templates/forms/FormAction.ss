<% if $UseButtonTag %>
    <button class="btn btn-default {$ExtraClass.ATT}" {$AttributesHTML}>
        <% if $ButtonContent %>
            {$ButtonContent.XML}
        <% else %>
            {$Title.XML}
        <% end_if %>
    </button>
<% else %>
    <input class="btn btn-default {$ExtraClass}" {$AttributesHTML} />
<% end_if %>
