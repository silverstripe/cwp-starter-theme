<span id="{$Name.ATT}_Holder" class="input-group">
    <input {$getAttributesHTML('id', 'name', 'value', 'tabindex')} id="{$ID}-0" name="{$Name.ATT}[0]" value="{$ValueOne.ATT}" $TabIndexHTML(0) />
    <div class="input-group-addon">-</div>
    <input {$getAttributesHTML('id', 'name', 'value', 'tabindex')} id="{$ID}-1" name="{$Name.ATT}[1]" value="{$ValueTwo.ATT}" $TabIndexHTML(1) />
    <div class="input-group-addon">-</div>
    <input {$getAttributesHTML('id', 'name', 'value', 'tabindex')} id="{$ID}-2" name="{$Name.ATT}[2]" value="{$ValueThree.ATT}" $TabIndexHTML(2) />
    <div class="input-group-addon">-</div>
    <input {$getAttributesHTML('id', 'name', 'value', 'tabindex')} id="{$ID}-3" name="{$Name.ATT}[3]" value="{$ValueFour.ATT}" $TabIndexHTML(3) />
</span>
