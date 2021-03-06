{**
 * templates/frontend/components/breadcrumbs_article.tpl
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display a breadcrumb nav item showing the current page. This basic
 *  version is for top-level pages which only need to show the Home link. For
 *  category- and series-specific breadcrumb generation, see
 *  templates/frontend/components/breadcrumbs_catalog.tpl.
 *
 * @uses $currentTitle string The title to use for the current page.
 * @uses $currentTitleKey string Translation key for title of current page.
 * @uses $issue Issue Issue this article was published in.
 *}

<nav class="cmp_breadcrumbs col-sm-12 hidden-xs text-right" style="background: url('{$baseUrl}/plugins/themes/nsamr/templates/images/patterns/brickwall_@2X.png') repeat; padding: 10px 0 10px 0;" role="navigation" aria-label="{translate key="navigation.breadcrumbLabel"}">
	<ol class="breadcrumb">
		<li>
			<a href="{url page="index" router=$smarty.const.ROUTE_PAGE}">
				{translate key="common.homepageNavigationLabel"}
			</a>
			<span class="separator">{translate key="navigation.breadcrumbSeparator"}</span>
		</li>
		<li>
			<a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"}">
				{translate key="navigation.archives"}
			</a>
			<span class="separator">{translate key="navigation.breadcrumbSeparator"}</span>
		</li>
		<li>
			<a href="{url page="issue" op="view" path=$issue->getBestIssueId()}">
				{$issue->getIssueIdentification()}
			</a>
			<span class="separator">{translate key="navigation.breadcrumbSeparator"}</span>
		</li>
		<li class="current">
				{if $currentTitleKey}
					{translate key=$currentTitleKey}
				{else}
					{$currentTitle|escape}
				{/if}
		</li>
	</ol>
</nav>
