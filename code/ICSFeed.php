<?php

namespace Unclecheese\EventCalendar;

use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use Unclecheese\EventCalendar\Calendar;



class ICSFeed extends DataObject {

	private static $table_name = 'ICSFeed';

	private static $db = array (
		'Title' => 'Varchar(100)',
		'URL' => 'Varchar(255)'
	);

	private static $has_one = array (
		'Calendar' => Calendar::class
	);

	public function getCMSFields() {
		$f = new FieldList (
//			new TextField('Title',_t('ICSFeed.TITLEOFFEED','Title of feed')),
			new TextField('Title',_t(ICSFeed::class.'.TITLEOFFEED','Title of feed')),
//			new TextField('URL',_t('ICSFeed.URLLINK','URL'),'http://')
			new TextField('URL',_t(ICSFeed::class.'.URLLINK','URL'),'http://')
		);

		$this->extend('updateCMSFields', $f);

		return $f;
	}

	public function summaryFields() {
		return array (
//				'Title' => _t('ICSFeed.TITLE','Title'),
				'Title' => _t(ICSFeed::class.'.TITLE','Title'),
		);
	}
}
