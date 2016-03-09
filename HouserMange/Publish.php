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
		$log = new log();
		$lgs = new logServer();
		$log->setInfo();
		$lgs->storage_info($log);
?>
	<center>
	<h2>发布信息</h2>
	<form action="rPublish.php" method="post"> 
		请选择需要发布信息的类型:<select name="pubType">
			<option value="">点开查看</option>
			<option value="出租">发布出租信息</option>
			<option value="出售">发布出售信息</option>
			<option value="求租">发布求租信息</option>
			<option value="求购">发布求购信息</option>
		
		</select>
		<table>
	
			<tr><td>姓名:</td><td><input type="text" name="name"></td></tr>
			<tr><td>房间号:</td><td><input type="text" name="roomid"></td></tr>
			<tr><td>地址:</td><td><input type="text" name="address"></td></tr>
			<tr><td>面积:</td><td><input type="text" name="area"></td></tr>
			<tr><td>类型:</td><td><input type="text" name="type"></td></tr>
			<tr><td>价格:</td><td><input type="text" name="price"></td></tr>
			<tr><td>联系电话:</td><td><input type="text" name="tel"></td></tr>
		</table>
		<input type="submit" value="提交">
	</form>	
	<a href="Main.php">返回主界面</a>
	</center>
</body>
</html>