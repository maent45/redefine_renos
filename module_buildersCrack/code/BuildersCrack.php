<?php

class BuildersCrack extends DataExtension {
	
	protected static $url = "https://builderscrack.co.nz/";	//url of the review to be scrapped
	protected static $sandBox = false;

	/**
	 * @param $url URL of builders crack review to be scrapped
	 */
	public static function setUrl($url) {
		self::$url = $url;
	}

	/**
	 * @param $sandbox bool sets sandbox mode
	 */
	public static function set_sandbox($sandbox)
	{
		self::$sandBox = $sandbox;
	}

	public static function BuildersCrackItemHandler($attributes, $content = null, $parser = null)
	{

	}

	public function getReviews($name = 'testing')
	{
		//pass the data to the buildersReview
		$data = new ArrayData(
			array(
				'name' => $name
			)
		);

		return $data->renderWith('buildersReview');
	}
	
}
