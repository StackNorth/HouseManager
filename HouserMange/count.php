<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link href="bg.css" type="text/css" rel="stylesheet">
	<title>Document</title>
</head>

<body>
<?php 
	require_once 'log.php';
	require_once 'logServer.php';
		$log = new log();
		$lgs = new logServer();
		$log->setInfo();
		$lgs->storage_info($log);
?>
	<a href="countUesrAccess.php">统计用户访问</a></br>
	<a href="check.php">查看访问信息</a></br>
	<a href="Main.php">返回主界面</a></br>

</body>
</html>