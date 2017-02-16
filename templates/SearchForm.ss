<form action="/search" class="inline-form page-searchform form-group">
    <div class="input-group">
        <input id="SearchForm_SearchForm_Search"
            aria-label="<%t CWP.Header.Search.Button "Search" %>"
            type="text"
            name="Search"
            class="text form-control searchfield input-lg"
            value="$SearchQuery"
            placeholder="<%t CWP.Header.Search.Placeholder "Search..." %>"/>
        <label class="sr-only" for="SearchForm_SearchForm_Search"><%t CWP.Header.Search.Button "Search" %></label>
        <div class="input-group-btn">
            <button type="submit" class="btn btn-default btn-lg"><%t CWP.Header.Search.Button "Search" %></button>
        </div>
    </div>
</form>
