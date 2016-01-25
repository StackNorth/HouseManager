<html>
<head>
	<meta charset="UTF-8">
	<link href="bg.css" type="text/css" rel="stylesheet">
</head>



 

<?php
	require_once 'logServer.php';
	require_once 'log.php';
	require_once 'logServer.php';
	require_once 'page.php';	
	header("Content-type:text/html;charset=utf-8");
	$log = new log();
	$lgs = new logServer();
	$page = new page();
	$log->setInfo();
	if(empty($_GET['pageNow'])){
			$page->pageNow=1;//当前页	
		}else{
			$page->pageNow=$_GET['pageNow'];
			
		}
	$lgs->storage_info($log);
	$user = $_COOKIE['user'];
	$lgs->browse_Mes($page,$user);
	$lgs->pageInfoDeal($page,$user);
	
?>
<br/>
<a href="count.php">返回上一界面</a>
</html>