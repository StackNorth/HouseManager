<meta http-equiv="content-type" content="html/text;charset=utf-8">
<link href="bg.css" type="text/css" rel="stylesheet">
<center>
<table height="50px"><tr></tr></table>
	<h2>用户信息</h2>
	<?php
		require_once 'adminServer.php';
		$ads = new adminServer();
		@session_start();
		$ads->queryAdmin();
	?>
	<br/><a href="AdminMange.php">返回</a>
</center>