<html>
	<head>
		<meta http-equiv="content-type" content="html/text;charset=utf-8">
		<link href="bg.css" type="text/css" rel="stylesheet">
	</head>	
	<body>
	<center>
	<table height="150px"><tr></tr></table>
	<?php
		@session_start();
		echo "登录成功<br/>";
	?>  
	<h2>管理员界面</h2> 
	<a href="manageUser.php">查询用户</a><br/>
	<a href="addUser.php">添加用户</a><br/>
	<a href="queryUser.php">删除用户</a><br/>
	<a href="updateUser.php">更新用户</a><br/>
	<a href="loginOut.php">安全退出</a><br/>
	</body>
	<?php 
		$_SESSION['name'] = $_GET['user'];
		$user = $_GET['user'];
		$_SESSION['password'] = $_GET['password'];
		echo "<a href='Main.php?user=".$user."'>返回用户主界面</a><br/>";
		?>
	</center>
</html>