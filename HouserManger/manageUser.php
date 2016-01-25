<meta http-equiv="content-type" content="html/text;charset=utf-8">
<?php
	require_once 'adminServer.php';
	$ads = new adminServer();
	session_start();
	$ads->queryAdmin();
?>
<a href="AdminMange.php">返回</a>