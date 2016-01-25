<html>
	<head>
		<meta http-equiv="content-type" content="html/text;charset=utf-8">
	</head>
	
	<body>
	<?php
		echo "登录成功<br/>";
		session_start();
		$_SESSION['name'] = $_GET['user'];
		$user = $_GET['user'];
		$_SESSION['password'] = $_GET['password'];
		echo "<a href='Main.php?user=".$user."'>返回主界面</a><br/>";
	?>  
	<h1>主界面</h1> 
	<a href="manageUser.php">查询用户</a><br/>
	<a href="addUser.php">添加用户</a><br/>
	<a href="queryUser.php">删除用户</a><br/>
	<a href="updateUser.php">更新用户</a><br/>
	<a href="loginOut.php">安全退出</a><br/>
	</body>
</html>