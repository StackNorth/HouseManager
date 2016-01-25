<?php	
	require_once 'log.php';
	require_once 'logServer.php';
		if($_GET["user"] != null){
			$u = $_GET["user"];
			setcookie("user",$u);
			}
		echo $_GET['user']."登录成功<br/>";
		if(!empty($_COOKIE['lastvisit'])){
			echo "你上次登陆的时间<br/>".$_COOKIE['lastvisit'];
			setcookie("lastvisit",date("Y-m-d H:i:s"),time()+24*60*60);
		}else{
			echo "欢迎你第一次登陆<br/>";
			setcookie("lastvisit",date("Y-m-d H:i:s"),time()+24*60*60);
		}
		echo "<br/>";
		$log = new log();
		$lgs = new logServer();
		$log->setInfo();
		$lgs->storage_info($log);

		?> 
<html>
<head>
	<meta http-equiv="content-type" content="html/text;charset=utf-8">
	<link href="bg.css" type="text/css" rel="stylesheet">
</head>
<body>		
	<a href='Message.php?user=<?php echo $_COOKIE['user']?>'>修改个人信息</a>
	<br/>
	<a href='Publish.php'>发布信息</a>
	<a href="selectInfo.php">查询信息</a>
	<br/>
	<a href='delPublish.php'>删除发布信息</a><br/>
	<a href='BrowseMessage.php'>浏览房屋信息</a><br/>
	<a href='count.php'>统计信息</a><br/>
	<a href ="loginOut.php">安全退出</a>
	
	
</body>
</html>