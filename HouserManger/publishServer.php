<?php
require_once 'pubInfo.php';
require_once 'mysqlTools.class.php';
require_once 'page.php';
class publishServer{
	/**
	 * 发布出租信息
	 *
	 * @param unknown_type $home
	 * @return 0/1/2 
	 * 	 */
	public function pub_Info($home){
		$mts = new mysqlTools();
		$b = 0;
		$sql = "insert into pubinfo(roomId,name,mode,price,address,area,type,tel,user) values('".$home->getRoomid()."','".$home->getName()
		."','".$home->getMode()."','".$home->getPrice()."','".$home->getAddress()."','".$home->getArea()."','".$home->getType()."','".$home->getTel()."','".$home->getUser()."')";	
		echo $mts->mysql_execute_dml($sql);
		if($mts->mysql_execute_dml($sql)>0){
			
			$sql1 = "insert into home(roomid,mode,address,area,type) values('".$home->getRoomid()."','".$home->getMode()."','".$home->getAddress()."','".$home->getArea()."','".$home->getType()."')";;
			$b = $mts->mysql_execute_dml($sql1);
		}
	
		$mts->mysql_exit();
		return $b;
	}
	/**
	 * 浏览出租信息
	 *
	 */
	public function browse_Mes($page){
		$pageStat = ($page->getPageNow()-1)*$page->getPageSize();
		$mst = new mysqlTools(); 
		$sql1 ="select * from home limit ".$pageStat.",".$page->getPageSize();
		$sql2 = "select count(roomid) C from home";
		$mst->execute_dql_fenyaPage($sql1,$sql2,$page);
		$mst->mysql_exit();
	}
	
	function pageInfoDeal($page){
			$page->gotoUrl="BrowseMessage.php";
			$navigate="";
  			$navigate ="<table border=1><tr><th>roomid</th><th>address</th><th>area</th><th>type</th><th>mode</th><th>mark</th><th>标记</th><th>取消标记</th></tr>";
			for($i=0;$i<count($page->res_array);$i++){
				$row = $page->res_array[$i];
				$navigate.="<tr><td>{$row['roomid']}</td><td>{$row['address']}</td><td>{$row['area']}</td><td>{$row['type']}</td><td>{$row['mode']}</td><td>{$row['mark']}</td>"
				."<td><a href='BrowseMessage.php?mark=1&roomid={$row['roomid']}'>标记</a></td><td><a href='BrowseMessage.php?mark=0&roomid={$row['roomid']}'>取消标记</a></td></tr>";
			}		
			$navigate.= "</table>";
			if($page->pageNow>1){
				$pageUp=$page->pageNow-1;
				$navigate.= "<a href='{$page->gotoUrl}?pageNow=$pageUp'>上一页</a>";
				
			}
			
			$start = floor(($page->pageNow-1)/$page->pageWhole)*$page->pageWhole+1;
			$index =$start+$page->pageWhole;
			if($page->pageNow<=$page->pageWhole){
				$start=1;
			}else{
				$navigate.= "<a href='{$page->gotoUrl}?pageNow=".($start-1)."'><<</a>";
			}
			for(;$start<$index;$start++){
				$navigate.= "<a href='{$page->gotoUrl}?pageNow=$start'>[$start]</a>&nbsp;&nbsp;";
			}
			if($page->pageNow+$page->pageWhole>$page->pageCount){
				$start=$pageCount;
			}else{
				$navigate.= "<a href='{$page->gotoUrl}?pageNow=".($start)."'>>></a>";
			}
			
			if($page->pageNow<$page->pageCount){
				$pageDown=$page->pageNow+1;
				$navigate.= "<a href='{$page->gotoUrl}?pageNow=$pageDown'>下一页</a>";
			}
			$navigate.="总共".$page->pageCount."页/当前第".$page->pageNow."页";
			$page->navigate = $navigate;
			echo $page->navigate;
			}
/**
 * 标记房屋信息
 * 
 */	
	public function mark($roomid){
		$sql = "update home set mark = 1 where roomid = '".$roomid."'";
		$mst = new mysqlTools(); 
		$b = $mst->mysql_execute_dml($sql);
		$mst->mysql_exit();
		return $b;
	}
	public function cancel_mark($roomid){
		$sql = "update home set mark = 0 where roomid = '".$roomid."'";
		$mst = new mysqlTools(); 
		$b = $mst->mysql_execute_dml($sql);
		$mst->mysql_exit();
		return $b;
	}

	
	/**
	 * 查询用户发布的信息
	 * 
	 */
	public function check_user_Info($user){
		$sql = "select * from pubinfo where user = '".$user."'";
		$mst = new mysqlTools(); 
		$res = $mst->mysql_execute_dql($sql);
		return $res;
	}
	/**
	 * 删除信息
	 *
	 * @param unknown_type $user
	 * @return unknown
	 */
	public function del_user_Info($userid){
		$sql = "delete from pubinfo where userid='".$userid."'";
		$mst = new mysqlTools(); 
		$b = $mst->mysql_execute_dml($sql);
		$mst->mysql_exit();
		return $b;
	}
}
?>