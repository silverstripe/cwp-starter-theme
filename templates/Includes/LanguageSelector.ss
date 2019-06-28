<% if $Locales %>
    <div class="btn-group float-right language-selector" id="header-language-toggle">
        <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" aria-label="<%t CWPLanguageSelector.LANGUAGE_SELECTOR "Language selector" %>">
            <i class="fa fa-language" aria-hidden="true"></i>
            <span class="d-none d-sm-inline">
                $SelectedLanguage
            </span>
        </button>
        <ul class="dropdown-menu dropdown-menu-right">
            <% loop $Locales %>
                <li>
                    <a href="$Link" lang="$LocaleRFC1766" class="dropdown-item<% if $LinkingMode == 'Current' %> active<% end_if %>">
                        <%-- Note: if you have multiple locales within the same language, you can use $Title instead --%>
                        $LanguageNative
                    </a>
                </li>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>
