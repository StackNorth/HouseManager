<?php
	require_once 'adminServer.php';
	require_once 'admin.php';
	$ads = new adminServer();
	$admin = new admin();
	$flag=0;
	if($_POST['user'] != NULL){
		$admin->setName($_POST['user']);
		$admin->setPassword($_POST['password']);
		$admin->setLoginNum($_POST['loginNum']);
		$admin->setLevel($_POST['level']);
		if($ads->insertAdmin($admin)>0){
			$flag=1;
		}else{
			$flag =2;
		}
	}
?>
<html>
<head>
<meta http-equiv="content-type" content="html/text;charset=utf-8">
<link href="bg.css" type="text/css" rel="stylesheet">
</head>
<body>
	<center>
	<table height="50px"><tr></tr></table>
	<h2>添加用户</h2>
	<form action="addUser.php" method="post" accept-charset="utf-8">
	<table align="center">
		<tr><td>用户名</td><td><input type="text" name="user"></td></tr>
		<tr><td>密码</td><td><input type="password" name="password"></td></tr>
		<tr><td>等级</td><td><input type="text" name="level"></td></tr>
		<tr><td>登录次数</td><td><input type="text" name="loginNum"></td></tr>
		<tr><td></td><td><input type="submit" value="添加">&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"></td></tr>
	</table>
	</form>
	<?php 
		if($flag ==1){
			echo "添加成功";
			$flag=0;
		}else if($flag ==2){
			echo "添加失败";
			$flag=0;
		}
	?>
	&nbsp;&nbsp;&nbsp;<a href="AdminMange.php">返回</a>
	</center>
</body>
</html>