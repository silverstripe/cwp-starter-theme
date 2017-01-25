<div class="TreeDropdownField {$ExtraClass.ATT} <% if $ShowSearch %>searchable<% end_if %>"
    aria-describedby="<% if $Message %>{$ID}-message<% end_if %> <% if $Description %>{$ID}-description<% end_if %>"
    data-url-tree="{$Link("tree")}"
    data-title="{$Title.ATT}"
    data-empty-title="{$EmptyTitle.ATT}"
    <% if $Metadata %>data-metadata="{$Metadata.ATT}"<% end_if %>>
    <input id="{$ID}" type="hidden" name="{$Name.ATT}" value="{$Value.ATT}" />
</div>
