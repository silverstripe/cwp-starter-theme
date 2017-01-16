<div class="container">
    <div class="row">
        <section class="col-md-10 col-md-offset-1">
            <div class="page-header">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
        </section>
    </div>
    <div class="row">
        <section class="<% if Menu(2) %>col-md-7 col-md-offset-1<% else %>col-md-10 col-md-offset-1<% end_if %>">
            $Content.RichLinks
            $Form
            <% include RelatedPages %>
            $CommentsForm
        </section>
        <% if Menu(2) %>
            <aside class="col-md-3">
                <% include SidebarNav %>
            </aside>
        <% end_if %>
    </div>
</div>
<div class="container page-utilities">
    <% if $LastEdited %>
        <p class="text-muted pull-right text-right small"><%t Cwp.LastModified "Last modified" %>: <time datetime="$LastEdited.Format(Y-m-d)">{$LastEdited.Format(jS F Y)}</time></p>
    <% end_if %>
    <ul class="pull-left list-inline">
        <li><a href="#print" title='<%t TableListField.Print "Print" %>'><%t TableListField.Print "Print" %>
        </a></li>
        <li><a href="#export" title='<%t Cwp.Export "Export PDF" %>'><%t Cwp.Export "Export PDF" %>
        </a></li>
        <% if $ClassName == 'NewsHolder' %>
        <li><a href="#subscribe" title='<%t Cwp.Subscribe "Subscribe" %>'><%t Cwp.Subscribe "Subscribe" %></a></li>
       <% end_if %>
    </ul>
</div>
