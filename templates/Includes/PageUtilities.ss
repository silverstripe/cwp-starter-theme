<div class="container page-utilities">
    <% if $LastEdited %>
        <% include LastModified %>
    <% end_if %>
    <ul class="pull-left list-inline">
        <li>
            <a href="#" onclick="window.print(); return false;"><%t TableListField.Print "Print" %></a>
        </li>
    <% if $PdfLink %>
        <li>
            <a href="$PdfLink" class="pdf"><%t CWP.Home.PDF "Export PDF" %></a>
        </li>
    <% end_if %>

        <% if $ClassName == HomePage %>
            <% if $AtomLink %>
                <li>
                    <a href="$AtomLink">
                        <i class="fa fa-rss" aria-hidden="true"></i>
                        <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                    </a>
                </li>
            <% else_if $RSSLink %>
                <li>
                    <a href="$RSSLink">
                        <i class="fa fa-rss" aria-hidden="true"></i>
                        <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                    </a>
                </li>
            <% else_if $DefaultAtomLink %>
                <li>
                    <a href="$DefaultAtomLink">
                        <i class="fa fa-rss" aria-hidden="true"></i>
                        <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                    </a>
                </li>
            <% else_if $DefaultRSSLink %>
                <li>
                    <a href="$DefaultRSSLink">
                        <i class="fa fa-rss" aria-hidden="true"></i>
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
