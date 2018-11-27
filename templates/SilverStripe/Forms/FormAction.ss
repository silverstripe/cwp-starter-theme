<% if $UseButtonTag %>
    <button $getAttributesHTML('class') class="btn-secondary rounded {$ExtraClass.ATT}" />
        <% if $ButtonContent %>
            {$ButtonContent.RAW}
        <% else %>
            {$Title.XML}
        <% end_if %>
    </button>
<% else %>
    <input $getAttributesHTML('class') class="rounded
        <% if $action == 'action_doDateFilter' %>
            mr-2
        <% else_if $action == 'action_process' %>
            ml-2 py-1
        <% end_if %>
        btn-secondary {$ExtraClass.ATT}"
    />
<% end_if %>
