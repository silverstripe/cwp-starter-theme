<span id="{$Name.ATT}_Holder" class="input-group">
    <input {$AttributesHTML} name="{$Name.ATT}[0]" value="{$ValueOne.ATT}" <% if $Message || $Description %>aria-describedby="<% if $Message %>{$ID}-message<% end_if %> <% if $Description %>{$ID}-description<% end_if %>"<% end_if %> />
    <div class="input-group-addon">-</div>
    <input {$AttributesHTML} name="{$Name.ATT}[1]" value="{$ValueTwo.ATT}" <% if $Message || $Description %>aria-describedby="<% if $Message %>{$ID}-message<% end_if %> <% if $Description %>{$ID}-description<% end_if %>"<% end_if %> />
    <div class="input-group-addon">-</div>
    <input {$AttributesHTML} name="{$Name.ATT}[2]" value="{$ValueThree.ATT}" <% if $Message || $Description %>aria-describedby="<% if $Message %>{$ID}-message<% end_if %> <% if $Description %>{$ID}-description<% end_if %>"<% end_if %> />
    <div class="input-group-addon">-</div>
    <input {$AttributesHTML} name="{$Name.ATT}[3]" value="{$ValueFour.ATT}" <% if $Message || $Description %>aria-describedby="<% if $Message %>{$ID}-message<% end_if %> <% if $Description %>{$ID}-description<% end_if %>"<% end_if %> />
</span>
