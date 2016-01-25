
<link href="bg.css" type="text/css" rel="stylesheet">
<?php
	require_once 'logServer.php';
	header("Content-type:text/html;charset=utf-8");
	$lsr = new logServer();
	$res = $lsr->count_info();
	$i=0;
	while(mysql_fetch_assoc($res)){
		 $i++;
	}
	
	echo "共有".$i."个用户访问";
	mysql_free_result($res);
?>
<a href="count.php">返回上一界面</a>