<form action="/search" class="form-inline">
    <div class="input-group">
        <label class="sr-only" for="SearchForm_SearchForm_Search"><%t CWP.Header.Search.Button "Search" %></label>
        <input id="SearchForm_SearchForm_Search"
            aria-label="<%t CWP.Header.Search.Button "Search" %>"
            type="search"
            name="Search"
            class="form-control"
            value="$SearchQuery"
            placeholder="<%t CWP.Header.Search.Placeholder "Search..." %>"/>
        <div class="input-group-addon">
            <button type="submit" class="btn btn-default"><%t CWP.Header.Search.Button "Search" %></button>
        </div>
    </div>
</form>
