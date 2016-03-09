<?php 
	require_once 'adminServer.php';
	$flag=0;
	if(!empty($_POST['user'])){
		$user = $_POST['user'];
		$password = $_POST['password'];
		$ads = new adminServer();
		if($ads->AdminLogin($user,$password) != NULL){
			header("Location:AdminMange.php?user=".$user."&password=".$password);
			exit();
		}else{
			$flag=1;
		}
	}
?>
<html>
<head>
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<link href="bg.css" type="text/css" rel="stylesheet">
</head>
<body>
	<table height="150px"><tr></tr></table>
	<h1><center>管理员登录界面</center></h1>
	<form action="AdminLogin.php" method="post" accept-charset="utf-8">
	<table align="center">
		<tr><td>账号</td><td><input type="text" name="user"></td></tr>
		<tr><td>密码</td><td><input type="password" name="password"></td></tr>
		<tr><td></td><td><input type="submit" value="登录">&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"></td></tr>
	</table>
	</form>
	<center><a href='index.php'>返回登录界面</a>
	<?php 
		if($flag == 1){
			echo "</br><font size='5' color='silver'>登录失败，账号或密码错误，请重新登录</font>";
			$flag=0;
		}
	?>
	</center>
</body>
</html>
