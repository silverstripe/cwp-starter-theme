<select {$getAttributesHTML('class')} class="$ExtraClass form-control row" <% include AriaAttributes %> >
    <% loop $Options %>
        <% include GroupedDropdownFieldOption %>
    <% end_loop %>
</select>
