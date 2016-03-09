<html>
<head>
	<meta http-equiv="content-type" content="html/text;charset=utf-8"/>
	<link href="bg.css" type="text/css" rel="stylesheet">
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
	<h2>修改个人信息</h2>
	请输入需要修改的信息
	<form action="updateInfo.php" method="post">
	<table>
		<tr><td>用户名</td><td><input type="text" name="user" value="<?php echo $_REQUEST['user']?>"/></td></tr>
		<tr><td>密码</td><td><input type="password" name="password"/></td></tr>
		<tr><td>性别</td><td><input type="radio" name="sex" value="女"/>女&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="男"/>男</td></tr>
		<tr><td>email</td><td><input type="text" name="email"/></td></tr>
		<tr><td>电话</td><td><input type="text" name="tel"/></td></tr>
		<tr><td>地址</td><td><input type="text" name="add"/></td></tr>
		<tr><td><input type="submit" value="修改"/></td><td>&nbsp;&nbsp;<input type="reset" value="重置"/></td></tr>
		</table>
	</form>
	<a href="Main.php">返回主界面</a>
	</center>
</body>
<html>