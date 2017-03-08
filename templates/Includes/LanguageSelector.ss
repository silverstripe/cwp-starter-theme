<% if $AvailableTranslations %>
    <div class="btn-group pull-right language-selector" id="header-language-toggle">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-language" aria-hidden="true"></i>
            <span class="hidden-xs">
                $SelectedLanguage
            </span>
            <span class="caret"></span>
        </button>
        <ul class="dropdown-menu dropdown-menu-right">
            <% loop $AvailableTranslations %>
                <li <% if $Current %> class="active"<% end_if %>>
                    <a href="$Link" lang="$Locale">
                        $LangName
                    </a>
                </li>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>
