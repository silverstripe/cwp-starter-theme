<div class="blog-member-details row">
    <% if $CurrentProfile.BlogProfileImage %>
        <div class="profile-image col-md-3">
            $CurrentProfile.BlogProfileImage.setWidth(180)
        </div>
    <% end_if %>

    <div class="profile-summary col-md-9">
        <h1>$CurrentProfile.FirstName $CurrentProfile.Surname</h1>
        <p>$CurrentProfile.BlogProfileSummary</p>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <hr>
    </div>
</div>
