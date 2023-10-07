<?php
error_reporting(E_ALL);
session_start();

date_default_timezone_set("Asia/Bangkok");
include_once "controller/system/config.db.php";
include "controller/system/router.class.php";

$class = new router;
$ConfigDB = new ConfigDB_Class();
$Load_ConfigDB = $ConfigDB;


	$class->start_router();
	$class->expire_router();



?>