<% if $VisibleCarouselItems %>
    <div class="jumbotron carousel slide <% if $Image %>has-image<% else %>text-center<% end_if %>" data-ride="carousel">
        <%-- Carousel items --%>
        <div class="carousel-inner" role="listbox">
            <% loop $VisibleCarouselItems %>
                <div class="<% if First %>active <% end_if %>item">
                    $Image.CroppedImage(710, 503)
                    <% if $Content || $Title || $PrimaryCallToActionLabel || $SecondaryCallToActionLabel %>
                        <div class="container">
                            <div class="col-md-8 col-md-offset-2">
                                <% if $Title %>
                                    <h1>$Title</h1>
                                <% end_if %>
                                $Content
                                <% if $PrimaryCallToActionLabel || $SecondaryCallToActionLabel %>
                                    <p>
                                        <% if $PrimaryCallToActionLabel %>
                                            <a class="btn btn-primary btn-lg" href="{$PrimaryCallToAction.Link}"
                                                title="$PrimaryCallToActionLabel">
                                                $PrimaryCallToActionLabel
                                            </a>
                                        <% end_if %>
                                        <% if $SecondaryCallToActionLabel %>
                                            <a class="btn btn-lg btn-link" href="{$SecondaryCallToAction.Link}"
                                                title="$SecondaryCallToActionLabel">
                                                $SecondaryCallToActionLabel
                                            </a>
                                        <% end_if %>
                                    </p>
                                <% end_if %>
                            </div>
                        </div>
                    <% end_if %>
                </div>
            <% end_loop %>
        </div>
        <% if $VisibleCarouselItems.Count > 1 %>
            <div class="carousel-interface">
                <div class="carousel-indicators">
                    <% loop $VisibleCarouselItems %>
                        <button class="carousel-control<% if $Pos == 1 %> active<% end_if %>" data-slide-to="$Pos(0)" data-target="#myCarousel" tabindex="0" name="carousel-item-{$Pos}">Carousel item $Pos</button>

                    <% end_loop %>
                </div>
                <div class="carousel-controls">
                    <button class="left" href="#myCarousel" data-slide="prev" tabindex="0" type="button" name="Previous">
                        <i class="icon-chevron-left" aria-hidden="true"></i>
                        <span class="sr-only"><%t CwpCarousel.PREVIOUS "Previous" %></span>
                    </button>
                    <button class="pause" tabindex="0" type="button" name="Pause">
                        <span class="icon" aria-hidden="true">&#xf04c;</span>
                        <span class="sr-only"><%t CwpCarousel.PAUSE "Pause" %></span>
                    </button>
                    <button class="right" href="#myCarousel" data-slide="next" tabindex="0" type="button" name="Next">
                        <i class="icon-chevron-right" aria-hidden="true"></i>
                        <span class="sr-only"><%t CwpCarousel.NEXT "Next" %></span>
                    </button>
                </div>
            </div>
        <% end_if %>
    </div>
<% end_if %>
