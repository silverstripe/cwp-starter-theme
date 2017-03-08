<select {$getAttributesHTML('class')} class="$ExtraClass form-control" <% include AriaAttributes %> >
    <% loop $Options %>
        <% include GroupedDropdownFieldOption %>
    <% end_loop %>
</select>
