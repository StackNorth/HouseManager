<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link href="bg.css" type="text/css" rel="stylesheet">
	<title></title>
</head>


<body>
<?php 
	require_once 'log.php';
	require_once 'logServer.php';
	require_once 'publishServer.php';
	$phs = new publishServer();
	if($_GET['del'] == "d"){
		
		$phs->del_user_Info($_GET['userid']);
		
	}
		$log = new log();
		$lgs = new logServer();
		$log->setInfo();
		$lgs->storage_info($log);
		$user = $_COOKIE['user'];
		
		$res = $phs->check_user_Info($user);
		echo "<table border=1><tr><td>id号</td><td>发布人</td><td>所属人</td><td>状态</td><td>价格</td><td>地址</td><td>面积</td><td>类型</td><td>联系信息</td><td>删除</td></tr>";
		while($row = mysql_fetch_assoc($res)){
			echo "<tr><td>{$row['userid']}</td><td>{$row['user']}</td><td>{$row['name']}</td><td>{$row['mode']}</td><td>{$row['price']}</td><td>{$row['address']}</td><td>{$row['area']}</td><td>{$row['type']}</td><td>{$row['tel']}</td>".
			"<td><a href=delPublish?del=d&userid={$row['userid']}>删除</td></tr>";
		}
		echo "</table>";
		mysql_free_result($res);
		
?>
	
	<a href="Main.php">返回主界面</a>
</body>
</html>