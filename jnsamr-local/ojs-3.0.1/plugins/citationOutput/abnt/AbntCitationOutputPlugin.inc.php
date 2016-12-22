<?php

/**
 * @file plugins/citationOutput/abnt/AbntCitationOutputPlugin.inc.php
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class AbntCitationOutputPlugin
 * @ingroup plugins_citationOutput_abnt
 *
 * @brief ABNT citation style plug-in.
 */


import('lib.pkp.plugins.citationOutput.abnt.PKPAbntCitationOutputPlugin');

class AbntCitationOutputPlugin extends PKPAbntCitationOutputPlugin {
	/**
	 * Constructor
	 */
	function __construct() {
		parent::__construct();
	}
}

?>