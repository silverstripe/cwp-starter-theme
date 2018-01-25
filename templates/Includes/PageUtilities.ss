<% if $ShowPageUtilities %>
    <div class="container page-utilities">
        <% if $LastEdited %>
            <% include LastModified %>
        <% end_if %>
        <ul class="pull-left list-inline">
            <li>
                <a href="#" onclick="window.print(); return false;"><%t SilverStripe\\Forms\\GridField\\GridField.Print "Print" %></a>
            </li>
            <%-- Uncomment this section to re-enable the PDF link in the template - see the documentation for
            configuration instructions --%>
            <%-- <% if $PdfLink %>
                <li>
                    <a href="$PdfLink"><%t CWP\\CWP\\PageTypes\\BaseHomePage.PDF "Export PDF" %></a>
                </li>
            <% end_if %> --%>

            <% if $ClassName == HomePage %>
                <% if $AtomLink %>
                    <li>
                        <a href="$AtomLink" class="fa fa-rss">
                            <span class="sr-only"><%t CWP\\CWP\\PageTypes\\BaseHomePage.Subscribe "Subscribe" %></span>
                        </a>
                    </li>
                <% else_if $RSSLink %>
                    <li>
                        <a href="$RSSLink" class="fa fa-rss">
                            <span class="sr-only"><%t CWP\\CWP\\PageTypes\\BaseHomePage.Subscribe "Subscribe" %></span>
                        </a>
                    </li>
                <% else_if $DefaultAtomLink %>
                    <li>
                        <a href="$DefaultAtomLink" class="fa fa-rss">
                            <span class="sr-only"><%t CWP\\CWP\\PageTypes\\BaseHomePage.Subscribe "Subscribe" %></span>
                        </a>
                    </li>
                <% else_if $DefaultRSSLink %>
                    <li>
                        <a href="$DefaultRSSLink" class="fa fa-rss">
                            <span class="sr-only"><%t CWP\\CWP\\PageTypes\\BaseHomePage.Subscribe "Subscribe" %></span>
                        </a>
                    </li>
                <% end_if %>
            <% end_if %>

            <% if $ClassName == CWP\\CWP\\PageTypes\\NewsHolder || $ClassName == CWP\\CWP\\PageTypes\\EventHolder || $ClassName == SilverStripe\\Blog\\Model\\Blog %>
                <li><a href="#subscribe"><%t CWP\\CWP\\PageTypes\\BaseHomePage.Subscribe "Subscribe" %></a></li>
            <% end_if %>
        </ul>
    </div>
<% end_if %>
