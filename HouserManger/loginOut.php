<?php
	require_once 'log.php';
	require_once 'logServer.php';
	setcookie("user");
	header("Location: index.php");
	$log = new log();
	$lgs = new logServer();
	$log->setInfo();
	$lgs->storage_info($log);
	exit();
?>