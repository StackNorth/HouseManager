<?php

require_once 'log.php';
require_once 'mysqlTools.class.php';
class logServer  {
	/**
	 * 存储信息
	 *
	 */
	public function storage_info($log){
		$sql ="insert into logg(user,page,time,browseinfo) values('".$log->getUser()."','".$log->getPage().
		"','".$log->getTime()."','".$log->getBrowseInfo()."')";
		$mst = new mysqlTools();
		$b = $mst->mysql_execute_dml($sql);
		$mst->mysql_exit();
		return $b;
	}
	/**
	 * 统计用户访问
	 *
	 */
	public function count_info(){
		$sql = "select * from logg group by user";
		$mst = new mysqlTools();
		$res = $mst->mysql_execute_dql($sql);
		return $res;
	}
	public function check_info($user){
		$sql = "select * from logg where user='".$user."' limit 0,100";
		$mst = new mysqlTools();
		$res = $mst->mysql_execute_dql($sql);
		return $res;
	}
/**
	 * 浏览出租信息
	 *
	 */
	public function browse_Mes($page,$user){
		$pageStat = ($page->getPageNow()-1)*$page->getPageSize();
		$mst = new mysqlTools(); 
		$sql1 ="select * from logg where user='".$user."' limit ".$pageStat.",".$page->getPageSize();
		$sql2 = "select count(*) from logg where user='".$user."' group by user";
		$mst->execute_dql_fenyaPage($sql1,$sql2,$page);
		$mst->mysql_exit();
	}
	
	function pageInfoDeal($page,$user){
		$page->gotoUrl="check.php";
		$navigate="";
  		$navigate ="<table border=1><tr><td>user</td><td>page</td><td>time</td><td>浏览器信息</td></tr>";
		for($i=0;$i<count($page->res_array);$i++){
			$row = $page->res_array[$i];
			$navigate.="<tr><td>{$row['user']}</td><td>{$row['page']}</td><td>{$row['time']}</td><td>{$row['browseinfo']}</td></tr>";
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
	
	
	
}


?>