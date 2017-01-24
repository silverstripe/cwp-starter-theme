<% if $AvailableTranslations %>
    <div class="btn-group pull-right" id="header-language-toggle">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            $SelectedLocale <span class="caret"></span>
        </button>
        <ul class="dropdown-menu dropdown-menu-right">
            <% loop $AvailableTranslations %>
                <li>
                    <a href="$Link" lang="$LangName" hreflang="$LangName">
                        $LangName
                    </a>
                </li>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>
