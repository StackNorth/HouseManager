<?php
require_once 'user.php';
require_once 'registerServer.php';
header("Content-type: text/html; charset=utf-8");
	if(isset($_GET['user'])){
		$u = new user();
		$u->setUser($_GET['user']);
		$u->setPassword($_GET['password']);
		$u->setSex($_GET['sex']);
		$u->setEmail($_GET['email']);
		$u->setTel($_GET['tel']);
		$u->setAdd($_GET['add']);
	}
	
	
	$r = new registerServer();
	if($r->registerUser($u)){	
		header("Refresh:5;url=Login.php");
		echo "注册成功，5秒后跳转登录界面";
		exit();
	}
	header("Refresh:5;url=register.php");
	echo "注册失败，请重新注册";
	exit();
?>