<html>
<head>
	<meta http-equiv="content-type" content="html/text;charset=utf-8">
	<link href="bg.css" type="text/css" rel="stylesheet">
</head>
<?php 
	require_once 'log.php';
	require_once 'logServer.php';
	echo "密码错误次数达到上限，请找管理员解锁";
	$log = new log();
	$lgs = new logServer();
	$log->setInfo();
	$lgs->storage_info($log);
?>
</html>