<% if $FeatureOneTitle %>
    <div class="<% if $FeatureTwoContent %>col-md-3 <% else %>col-md-6 <% end_if %>col-xs-12">
        <h2>$FeatureOneTitle</h2>
        $FeatureOneContent
        <% if $FeatureOneLink && $FeatureOneButtonText %>
            <p><a class="btn btn-default" href="$FeatureOneLink.Link" title="$FeatureOneButtonText">$FeatureOneButtonText</a></p>
        <% end_if %>
    </div>
<% end_if %>
<% if $FeatureTwoTitle %>
    <div class="col-md-3 col-xs-12">
        <h2>$FeatureTwoTitle</h2>
        $FeatureTwoContent
        <% if $FeatureTwoLink && $FeatureTwoButtonText %>
            <p><a class="btn btn-default" href="$FeatureTwoLink.Link" title="$FeatureTwoButtonText">$FeatureTwoButtonText</a></p>
        <% end_if %>
    </div>
<% end_if %>