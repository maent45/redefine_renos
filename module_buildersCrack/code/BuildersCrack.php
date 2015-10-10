<?php

class BuildersCrack extends DataExtension {
	
	protected static $url = "https://builderscrack.co.nz/";	//url of the review to be scrapped


	/**
	 * @param $url URL of builders crack review to be scrapped
	 */
	public static function setUrl($url) {
		self::$url = $url;
	}


	
}
