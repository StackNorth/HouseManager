<?php
	require_once 'user.php';
	require_once 'registerServer.php';
	header("Content-type: text/html; charset=utf-8");
	$u = new user();
	$u->setUser($_POST['user']);
	$u->setPassword($_POST['password']);
	$u->setSex($_POST['sex']);
	$u->setEmail($_POST['email']);
	$u->setTel($_POST['tel']);
	$u->setAdd($_POST['add']);
	$r = new registerServer();
	if($r->updateregisterByUser($u) == 1){
		echo "修改成功，点击返回主界面";
		echo "<a href='Main.php'>返回</a>";
	}else{
		echo "修改失败，点击返回修改界面";
		echo "<a href='Message.php'>返回</a>";
	}
	
?>