<html>
<head>
	<meta http-equiv="content-type" content="html/text;charset=utf-8">
	<link href="bg.css" type="text/css" rel="stylesheet">
</head>
<?php
	require_once 'logServer.php';
	$lsr = new logServer();
	$res = $lsr->count_info();
	$i=0;
	while(mysql_fetch_assoc($res)){
		 $i++;
	}
	
	echo "共有".$i."个用户访问";
	mysql_free_result($res);
?>
&nbsp;&nbsp;&nbsp;<a href="count.php">返回上一界面</a>
</html>