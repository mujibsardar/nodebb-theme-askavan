<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="recent">
	<div class="btn-toolbar">
		<div class="pull-left">
			<!-- IF canPost -->
			<!-- IMPORT partials/buttons/newTopic.tpl -->
			<!-- ELSE -->
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF canPost -->
			<a href="{config.relative_path}/{selectedFilter.url}" class="inline-block">
				<div class="alert alert-warning hide" id="new-topics-alert"></div>
			</a>
		</div>

		<!-- Add Bootcamp List Carousel Here? -->
		<div class="slider-parent">
			<div class="slider">
				<div class="slide-track">
					<div class="slide">
						<img src="https://raw.githubusercontent.com/Team-FCB/Assets/master/bootcamp_1.png" height="100" width="250" alt="" />
					</div>
					<div class="slide">
						<img src="https://raw.githubusercontent.com/Team-FCB/Assets/master/bootcamp_2.png" height="100" width="250" alt="" />
					</div>
					<div class="slide">
						<img src="https://raw.githubusercontent.com/Team-FCB/Assets/master/bootcamp_3.png" height="100" width="250" alt="" />
					</div>
					<div class="slide">
						<img src="https://raw.githubusercontent.com/Team-FCB/Assets/master/bootcamp_4.png" height="100" width="250" alt="" />
					</div>
					<div class="slide">
						<img src="https://raw.githubusercontent.com/Team-FCB/Assets/master/bootcamp_5.png" height="100" width="250" alt="" />
					</div>
					<div class="slide">
						<img src="https://raw.githubusercontent.com/Team-FCB/Assets/master/bootcamp_6.png" height="100" width="250" alt="" />
					</div>
					<!-- <div class="slide">
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/7.png" height="100" width="250" alt="" />
					</div>
					<div class="slide">
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/1.png" height="100" width="250" alt="" />
					</div>
					<div class="slide">
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/2.png" height="100" width="250" alt="" />
					</div>
					<div class="slide">
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/3.png" height="100" width="250" alt="" />
					</div>
					<div class="slide">
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/4.png" height="100" width="250" alt="" />
					</div>
					<div class="slide">
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/5.png" height="100" width="250" alt="" />
					</div>
					<div class="slide">
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/6.png" height="100" width="250" alt="" />
					</div>
					<div class="slide">
						<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/7.png" height="100" width="250" alt="" />
					</div> -->
				</div>
			</div>
		</div>

		<!-- IMPORT partials/category-filter.tpl -->

		<div class="btn-group pull-right bottom-sheet <!-- IF !filters.length -->hidden<!-- ENDIF !filters.length -->">
			<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
				{selectedFilter.name} <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				{{{each filters}}}
				<li role="presentation" class="category">
					<a role="menu-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
				</li>
				{{{end}}}
			</ul>
		</div>
	</div>

	<hr class="hidden-xs" />

	<div class="category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">[[recent:no_recent_topics]]</div>
		<!-- ENDIF !topics.length -->

		<!-- IMPORT partials/topics_list.tpl -->

		<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>

<!-- <a href="https://www.paypal.com/paypalme/avantutor" target="_blank"><img src="https://raw.githubusercontent.com/Team-FCB/Assets/master/Tip-Jar-Burned.png" id="tip-jar"></a> -->