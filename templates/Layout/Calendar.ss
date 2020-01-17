<section>

  <div class="row">
    <div class="small-12 hide-for-small column">
      <div class="breadcrumbs-wrap">A{$Breadcrumbs}</div>
    </div>
  </div>

  <div class="row">
    <div class="small-12 column">

      <div class="row">
        <div class="large-3 medium-3 small-12 column">
          <div class="side-bar events hide-for-small">
        	<a class="side-bar-title" href="javascript:;" data-interchange="[{$ThemeDir}/images/fern-transparent-sml.png, (default)]">Filter Events</a>
            $filterEventsForm
			<br />
          </div>

		  <div class="show-for-small">
		  <ul class="side-bar events accordion" data-accordion>
  			<li class="accordion-navigation">
  				<a class="side-bar-title" href="#filterbox" data-interchange="[{$ThemeDir}/images/fern-transparent-sml.png, (default)]">Filter Events</a>
  				<div id="filterbox" class="content">
  					$filterEventsForm
  				</div>
  			</li>
  		  </ul>
		  <br />
	  	</div>

        </div>

        <div class="large-9 medium-9 small-12 typography column">
          <div class="event-filter-results">

            <% if FilterEvents %>
              <h2>Search Results</h2>
              <% loop FilterEvents %>
                <% include EventListBlockDetails %>
              <% end_loop %>
            <% else %>
              <h2>$DateHeader</h2>
              <% if Events %>
                <div id="event-calendar-events">
					<% loop Events %>
						<%-- with Event --%>
   				       	<% include EventListBlockDetails %>
   				     	<%-- end_with --%>
   				 	<% end_loop %>
                </div>
              <% else %>
                <p><% _t('NOEVENTS','There are no events') %>.</p>
              <% end_if %>
            <% end_if %>


			<% if FilterEvents %>
				<!-- BEGIN PAGINATION -->
				<% if $FilterEvents.MoreThanOnePage %>
				<div class="pagination-centered">
				<ul class="pagination">
					<% if $FilterEvents.NotFirstPage %>
						<li><a href="$FilterEvents.PrevLink"><i class="fa fa-chevron-left"></i></a></li>
					<% end_if %>
						<% loop $FilterEvents.Pages %>
						<li <% if $CurrentBool %>class="current"<% end_if %>><a href="$Link">$PageNum</a></li>
						<% end_loop %>
					<% if $FilterEvents.NotLastPage %>
						<li><a href="$FilterEvents.NextLink"><i class="fa fa-chevron-right"></i></a></li>
					<% end_if %>
				</ul>
				</div>
				<% end_if %>
				<!-- END PAGINATION -->
			<% else %>
				<!-- BEGIN PAGINATION -->
				<!-- events: {$Events.Count} -->
				<!-- events pages: {$Events.Pages.Count} -->
				<% if Events.MoreThanOnePage %>
				<div class="pagination-centered">
				<ul class="pagination">
					<% if Events.NotFirstPage %>
						<li><a href="$Events.PrevLink"><i class="fa fa-chevron-left"></i></a></li>
					<% end_if %>
						<% loop Events.Pages %>
						<li <% if $CurrentBool %>class="current"<% end_if %>><a href="$Link">$PageNum</a></li>
						<% end_loop %>
					<% if Events.NotLastPage %>
						<li><a href="$Events.NextLink"><i class="fa fa-chevron-right"></i></a></li>
					<% end_if %>
				</ul>
				</div>
				<% end_if %>
				<!-- END PAGINATION -->
			<% end_if %>

			<% if MoreLink %>
				<div class="pagination-centered">
					<ul class="pagination">
						<li><a class="button" href="$MoreLink">More events</a></li>
					</ul>
				</div>
			<% end_if %>

          </div>

        </div>
      </div>

    </div>
  </div>
</section>
