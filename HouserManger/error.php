<?php 
	require_once 'log.php';
	require_once 'logServer.php';
	header("Content-type: text/html; charset=utf-8");
	echo "密码错误次数达到上限，请找管理员解锁";
	$log = new log();
	$lgs = new logServer();
	$log->setInfo();
	$lgs->storage_info($log);
?>