<?php
	require_once 'adminServer.php';
	$flag=0;
	if($_POST['user'] != NULL){
		$user = $_POST['user'];
		$ads = new adminServer();
		if($ads->delAdmin($user)>0){
			$flag = 1;
		}else{
			$flag = 2;
		}
	}
?>
<html>
<head>
<meta http-equiv="content-type" content="html/text;charset=utf-8">	
</head>
<body>
	<h1>删除用户</h1>
	<form action="queryuser.php" method="post">
	用户名<input type="text" name="user"/>
	<input type="submit" name="提交"/>
	</form>
<?php 
	if($flag ==1){
		echo "删除成功";
		$flag =0;
	}else if($flag ==2){
		echo "删除失败";
		$flag =0;
	}
?>
<a href="AdminMange.php">返回</a>
</body>
</html>