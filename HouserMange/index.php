<?php 
	require_once 'adminServer.php';
	$flag=0;
	if(isset($_GET['error'])){
		$error=$_GET['error'];
		$user = $_GET['user'];
		if($error==1){
			$ads = new adminServer();
			if($ads->InquireLoginNum($user)>3){
				header("Location:error.php");
				exit();
			}else{
				$flag=1;
			} 
		}
	}
?>
<html>
<head>
	<meta http-equiv="content-type" content="html/text;charset=utf-8">
	<link href="bg.css" type="text/css" rel="stylesheet">
</head>
<body>
	<form action="rLogin.php" method="get">
		<center>
		<table height="150px"><tr></tr></table>
			<h1>房产中介管理系统</h1>
			<table>
				<tr><td>账号：<input type="text" name="user" ></td></tr>
				<tr><td>密码：<input type="password" name="pwd"></td></tr>
			</table>
			<input type="submit" value="提交">&nbsp;&nbsp;<input type="reset" value="重置">&nbsp;&nbsp;
			<a href="Register.php"> 注册</a>
			<br/><br/><a href="BrowseMessage.php">查看空闲房屋</a>
			<br/><br/><a href="AdminLogin.php">管理员入口</a>
		</center>
	</form>
</body>
<?php 
	if($flag == 1){
		echo"</br></br><center><font size='5' color='silver'>账号或密码输入错误</font></center>";
		$flag=0;
	}	
?>
</html>
			