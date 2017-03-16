<span id="{$ID.ATT}" class="input-group" <%include AriaAttributes %> >
    <input {$getAttributesHTML('id', 'name', 'value', 'tabindex', 'class')} class="$ExtraClass form-control" id="{$ID}-0" name="{$Name.ATT}[0]" value="{$ValueOne.ATT}" $TabIndexHTML(0) aria-labelledby="title-{$ID}" />
    <div class="input-group-addon">-</div>
    <input {$getAttributesHTML('id', 'name', 'value', 'tabindex', 'class')} class="$ExtraClass form-control" id="{$ID}-1" name="{$Name.ATT}[1]" value="{$ValueTwo.ATT}" $TabIndexHTML(1) aria-labelledby="title-{$ID}" />
    <div class="input-group-addon">-</div>
    <input {$getAttributesHTML('id', 'name', 'value', 'tabindex', 'class')} class="$ExtraClass form-control" id="{$ID}-2" name="{$Name.ATT}[2]" value="{$ValueThree.ATT}" $TabIndexHTML(2) aria-labelledby="title-{$ID}" />
    <div class="input-group-addon">-</div>
    <input {$getAttributesHTML('id', 'name', 'value', 'tabindex', 'class')} class="$ExtraClass form-control" id="{$ID}-3" name="{$Name.ATT}[3]" value="{$ValueFour.ATT}" $TabIndexHTML(3) aria-labelledby="title-{$ID}" />
</span>
