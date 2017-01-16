<article class="container">
    <div class="row">
        <section class="col-md-10 col-md-offset-1">
            <header class="page-header">
                $Breadcrumbs
                <h1>$Title</h1>
            </header>
        </section>
    </div>
    <div class="row">
        <section class="col-md-7 col-md-offset-1">
            <% include NewsItem %>
        </section>
        <aside class="col-md-3">
            <% include NewsDetail %>
        </aside>
    </div>
</article>
<div class="container page-utilities">
    <% if $LastEdited %>
        <p class="text-muted pull-right text-right small">Last modified: <time datetime="$LastEdited.Format(Y-m-d)">{$LastEdited.Format(jS F Y)}</time></p>
    <% end_if %>
    <ul class="pull-left list-inline">
        <li>
            <a href="#print" title='<%t TableListField.Print "Print" %>'><%t TableListField.Print "Print" %>
            </a>
        </li>
        <li>
            <a href="#export" title='<%t Cwp.Export "Export PDF" %>'><%t Cwp.Export "Export PDF" %>
            </a>
        </li>
    </ul>
</div>
