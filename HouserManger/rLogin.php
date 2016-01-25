<?php 
	require_once 'adminServer.php';
	
	if(isset($_GET['user'])){
		$user = $_GET['user'];
	}
	if(isset($_GET['pwd'])){
		$pwd=$_GET['pwd'];
	}
	$ads = new adminServer();
	if($ads->checkAdmin($user,$pwd)){//如果成功返回user,失敗返回null
		header("Location: Main.php?user=$user");//Location：所要跳转的界面xx.php   默认写法
		exit();//header指向某个文件后必须退出。
	}
	
	header("Location: index.php?error=1&user=".$user);
	exit();
?>