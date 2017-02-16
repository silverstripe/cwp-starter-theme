<div {$AttributesHTML}>
    <h{$HeadingLevel}>{$Title.XML}</h{$HeadingLevel}>
    <div>
        <% loop $FieldList %>
            {$FieldHolder}
        <% end_loop %>
    </div>
</div>
