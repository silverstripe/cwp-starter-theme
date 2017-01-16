<%--Include SidebarMenu recursively --%>
<% if $Menu(2) %>
    <div class="navbar navbar-default">
        <nav id="pageNav" role="navigation">
            <% with $Level(1) %>
                <% include SidebarNavChildren %>
            <% end_with %>
        </nav>
    </div>
<% end_if %>
