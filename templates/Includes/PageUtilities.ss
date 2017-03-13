<% if $ShowPageUtilities %>
    <div class="container page-utilities">
        <% if $LastEdited %>
            <% include LastModified %>
        <% end_if %>
        <ul class="pull-left list-inline">
            <li>
                <a href="#" onclick="window.print(); return false;"><%t TableListField.Print "Print" %></a>
            </li>
            <%-- Uncomment this section to re-enable the PDF link in the template - see the documentation for
            configuration instructions --%>
            <%-- <% if $PdfLink %>
                <li>
                    <a href="$PdfLink"><%t CWP.Home.PDF "Export PDF" %></a>
                </li>
            <% end_if %> --%>

            <% if $ClassName == HomePage %>
                <% if $AtomLink %>
                    <li>
                        <a href="$AtomLink" class="fa fa-rss">
                            <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                        </a>
                    </li>
                <% else_if $RSSLink %>
                    <li>
                        <a href="$RSSLink" class="fa fa-rss">
                            <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                        </a>
                    </li>
                <% else_if $DefaultAtomLink %>
                    <li>
                        <a href="$DefaultAtomLink" class="fa fa-rss">
                            <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                        </a>
                    </li>
                <% else_if $DefaultRSSLink %>
                    <li>
                        <a href="$DefaultRSSLink" class="fa fa-rss">
                            <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                        </a>
                    </li>
                <% end_if %>
            <% end_if %>

            <% if $ClassName == NewsHolder || $ClassName == EventsHolder || $ClassName == Blog %>
                <li><a href="#subscribe"><%t Cwp.Subscribe "Subscribe" %></a></li>
            <% end_if %>
        </ul>
    </div>
<% end_if %>
