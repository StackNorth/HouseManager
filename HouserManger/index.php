<html>
<head>
	<meta http-equiv="content-type" content="html/text;charset=utf-8">
	<link href="bg.css" type="text/css" rel="stylesheet">
</head>
<body >
	<form action="rLogin.php" method="get">
	<a href="AdminLogin.php">管理员入口</a>
		<center>
		<table height="200px"><tr></tr></table>
			<font size="5"><b>房产中介管理系统</b></font>
			<table>
				<tr><td>账号：<input type="text" name="user" ></td></tr>
				<tr><td>密码：<input type="password" name="pwd"></td></tr>
			</table>
			<input type="submit" value="提交">&nbsp<input type="reset" value="重置">&nbsp;&nbsp;&nbsp;
			<a href="Register.php"> 注册</a>
			<br/><br/><a href="BrowseMessage.php"><font color="black">查看空闲房屋</font></a>
			<?php 
				require_once 'adminServer.php';
				if(isset($_GET['error'])){
					$error=$_GET['error'];
					$user = $_GET['user'];
					if($error==1){
						$ads = new adminServer();
						if($ads->InquireLoginNum($user)<3)
							echo"账号或密码输入错误";
						else{
							header("Location: error.php");
							exit();
						} 
							
					}
				}
			?>
			
		</center>
	</form>
</body>
</html>