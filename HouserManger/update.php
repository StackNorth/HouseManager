<?php
require_once 'admin.php';
require_once 'adminServer.php';
	$ads = new adminServer();
	$admin = new admin();
	if($_POST['user'] != NULL){
		$user = $_POST['user'];
		$admin = $ads->selectInfoByUser($user);
	}
?>
<html>
<head>
<meta http-equiv="content-type" content="html/text;charset=utf-8">	
</head>
<body>
	<h1>更新用户</h1>
	<form action="dealUpdateUser.php" method="post">
	<table> 
	<tr><td>用户名</td><td><input type="text" name="user" value="<?php echo $admin->getName();?>"/></td></tr>
	<tr><td>密码</td><td><input type="text" name="password" value="<?php echo $admin->getPassword();?>"/></td></tr>
	<tr><td>等级</td><td><input type="text" name="level" value="<?php echo $admin->getLevel();?>"/></td></tr>
	<tr><td>登陆次数</td><td><input type="text" name="loginNum" value="<?php echo $admin->getLoginNum();?>"/></td></tr>
	<tr><td></td><td><input type="submit" name="提交"/></td></tr>
	</table>
	</form>

<a href="updateuser.php">返回</a>
</body>
</html>