<div class="news-events_date-range">    
    <% with DateRangeForm %>
        <h3 class="h4"><%t CWP.DateRange.FilterDate "Filter by date" %></h3>
        <form $FormAttributes>
            <% if $ErrorMessage %>
                <div id="{$FormName}_error" class="message $ErrorMessageType">$ErrorMessage</div>
            <% else %>
                <div id="{$FormName}_error" class="message $ErrorMessageType" style="display: none"></div>
            <% end_if %>

            <fieldset>
                <div id="from" class="field date text form-group">
                    <label class="left" for="{$FormName}_from">
                        <%t CWP.DateRange.FilterFrom "From date" %> 
                        <span class="field-note">(example: 2017/12/30)</span>
                    </label>
                    $Fields.dataFieldByName(from)
                </div>
                <div id="to" class="field date text form-group">
                    <label class="left" for="{$FormName}_to">
                        <%t CWP.DateRange.FilterTo "To date" %> 
                        <span class="field-note">(example: 2017/12/30)</span>
                    </label>
                    $Fields.dataFieldByName(to)
                </div>
                $Fields.dataFieldByName(tag)
                $Fields.dataFieldByName(SecurityID)
            </fieldset>
            
            <div class="btn-toolbar">
                <% if $Actions %>
                    <% loop $Actions %>$Field<% end_loop %>
                <% end_if %>
            </div>
            
        </form>
    <% end_with %>
</div>