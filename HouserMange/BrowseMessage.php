<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<link href="bg.css" type="text/css" rel="stylesheet">
</head>
<body>
<center>
<h2>浏览房屋信息</h2>
<font color="red">
	<?php
		require_once 'publishServer.php';
		require_once 'page.php';
		$page = new page();
		$phs = new publishServer();
		if($_GET['mark'] == 1){
			$phs->mark($_GET['roomid']);
		}else if ($_GET['mark'] == 0){
			$phs->cancel_mark($_GET['roomid']);
		}
 		
		if(empty($_GET['pageNow'])){
			$page->pageNow=1;//当前页	
		}else{
			$page->pageNow=$_GET['pageNow'];
			
		}
		
		$phs->browse_Mes($page);
		$phs->pageInfoDeal($page);
		
	?>
</font>
<form action="BrowseMessage.php" >
	输入要跳转的页面:<input type="text" name="pageNow"/>
	<input type="submit" value="go"/><br/>
<?php 
	if($_COOKIE['user'] != NULL)
		echo "<a href='Main.php'>返回主界面</a>";
	else 
		echo "<br/><a href='index.php'>返回登录界面</a>";
?>
</form>	
</center>
</body>

</html>
