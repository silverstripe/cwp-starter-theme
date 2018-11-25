<% if $UseButtonTag %>
    <button $getAttributesHTML('class') class="btn-secondary rounded{$ExtraClass.ATT}" />
        <% if $ButtonContent %>
            {$ButtonContent.RAW}
        <% else %>
            {$Title.XML}
        <% end_if %>
    </button>
<% else %>
    <input $getAttributesHTML('class') class="rounded <% if $action == 'action_doDateFilter' %>mr-2 <% else_if $action == 'action_doDateReset' %>btn-secondary <% end_if %>{$ExtraClass.ATT}" />
<% end_if %>
