<?php
class CONF {
	
	/* Flag for demo version */
	public $DEMO_VERSION = false;

	/* Data configuration for database */
	public $DB_SERVER = "localhost";
	public $DB_USER = "root";
	public $DB_PASSWORD = "";
	public $DB_NAME = "ci_pawon";
	
	/* FCM key for notification */
	public $FCM_KEY = "AIzaSyDxm51rGf09EGlw1mbHwbtSz5Yd10rT65E";


    /* [ IMPORTANT ] be careful when edit this security code, use AlphaNumeric only*/
    /* This string must be same with security code at Android, if its different android unable to submit order */
	public $SECURITY_CODE = "alvus.id2017";
	
}	
?>