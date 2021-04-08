<div class="container">
    <div class="row">
        <section class="col-lg-8 offset-lg-2">
            <div class="page-header border-bottom pb-3 mt-5 mb-4 clearfix">
                $Breadcrumbs
                <h1 class="float-left">$Title</h1>
                <h1 class="float-right">
                    <a href="https://userhelp.silverstripe.org/en/4/managing_your_website/logging_in/"
                       class="btn btn-link" target="_blank" aria-label="Help">
                        <i class="fa fa-question-circle fa-2x" aria-hidden="true"></i>
                    </a>
                </h1>
            </div>
        </section>
    </div>
    <div class="row">
        <section class="col-lg-8 offset-lg-2">
            <% if $Content.RichLinks %>
            $Content.RichLinks
            <% else %>
            $Content
            <% end_if %>
            $Form
            <% include RelatedPages %>
            $CommentsForm
        </section>
    </div>
</div>
<% include PageUtilities %>
