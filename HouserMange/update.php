<?php
require_once 'admin.php';
require_once 'adminServer.php';
	$ads = new adminServer();
	$admin = new admin();
	if($_POST['user'] != NULL){
		$user = $_POST['user'];
		$admin = $ads->selectInfoByUser($user);
	}
		$flag=0;
		if($_POST['c'] == "1"){
			$admin->setName($_POST['name']);
			$admin->setLevel($_POST['level']);
			$admin->setLoginNum($_POST['loginNum']);
			$admin->setPassword($_POST['password']);
			if($ads->updateAdmin($admin)>0){
				 $flag=1;
			}else{
				 $flag=2;
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
<table height="100px"><tr></tr></table>
	<h2>更新用户</h2>
	<form action="update.php" method="post">
	<input type="hidden" name="c" value="1">
	<table> 
	<tr><td>用户名</td><td><input type="text" name="name" value="<?php echo $admin->getName();?>"/></td></tr>
	<tr><td>密码</td><td><input type="text" name="password" value="<?php echo $admin->getPassword();?>"/></td></tr>
	<tr><td>等级</td><td><input type="text" name="level" value="<?php echo $admin->getLevel();?>"/></td></tr>
	<tr><td>登陆次数</td><td><input type="text" name="loginNum" value="<?php echo $admin->getLoginNum();?>"/></td></tr>
	<tr><td></td><td><input type="submit" name="提交"/></td></tr>
	</table>
	</form>
	<?php 
		if($flag ==1){
			echo "更新成功";
			$flag=0;
		}else if($flag ==2){
			echo "更新失败";
			$flag=0;
		}
	?>
&nbsp;&nbsp;&nbsp;<a href='updateUser.php'>返回</a>
</center>
</body>
</html>