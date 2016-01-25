<meta http-equiv="content-type" content="html/text;charset=utf-8">	
<?php
require_once 'admin.php';
require_once 'adminServer.php';
	$admin = new admin();
	$ads = new adminServer();	
	if($_POST['user'] !=NULL){
		$admin->setName($_POST['user']);
		$admin->setLevel($_POST['level']);
		$admin->setLoginNum($_POST['loginNum']);
		$admin->setPassword($_POST['password']);
		if($ads->updateAdmin($admin)>0){
			echo "添加成功";
		}else{
			echo "添加失败";
		}
	}
?>
<a href="update.php">返回</a>