<?php
require_once 'pubInfo.php';
require_once 'publishServer.php';
	header("content-type:text/html;charset=utf-8");	
	$pubType = $_POST['pubType'];
	if($pubType ==""){
		header("Refresh:5; url=publish.php");
		echo "出现错误信息,5s后自动返回";
		exit();
	}else{
		$h = new pubInfo();
		$h->setName($_POST['name']);
		$h->setRoomid($_POST['roomid']);
		$h->setAddress($_POST['address']);
		$h->setMode($pubType);
		$h->setArea($_POST['area']);
		$h->setPrice($_POST['price']);
		$h->setTel($_POST['tel']);
		$h->setType($_POST['type']);
		$h->setUser($_COOKIE['user']);
		$psh = new publishServer();
		if($psh->pub_Info($h)>0){
			header("Refresh:3; url=Main.php");
			echo "执行成功,3s后返回主界面";
			exit();	
		}else{
			header("Refresh:3; url=publish.php");
			echo "执行失败,3s后返回发布界面";
			exit();
		}
	}
?>