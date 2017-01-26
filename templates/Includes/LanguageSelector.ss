<% if $AvailableTranslations %>
    <div class="btn-group pull-right language-selector" id="header-language-toggle">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="hidden-xs">$SelectedLocale</span> 
            <span class="caret"></span>
            <div class="visible-xs pull-left">
                <i class="fa fa-language" aria-hidden="true"></i>
            </div>
        </button>
        <ul class="dropdown-menu dropdown-menu-right">
            <% loop $AvailableTranslations %>
                <li <% if $Current %> class="active"<% end_if %>>
                    <a href="$Link" lang="$LangName" hreflang="$LangName">
                        $LangName
                    </a>
                </li>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>
