<?php
  class mysqlTools{
  	private $user="root";
  	private $pwd="root";
  	private $localhost="localhost";
  	private $conn;
  	private $dbname="Su";
  	public $res;
  	
  	public function __construct(){
  		$this->conn=mysql_connect($this->localhost,$this->user,$this->pwd) or die("连接出错".mysql_error());
  		mysql_select_db($this->dbname,$this->conn)or die("选择数据库出错".mysql_error());
  		mysql_query("set names utf8",$this->conn);
  	} 
  	/**
  	 * 执行select语句返回一个结果集
  	 *
  	 * @param String  $sql 传入一个sql语句
  	 * @return 一个结果集
  	 */
  	public function mysql_execute_dql($sql){
  		$this->res=mysql_query($sql,$this->conn);
  		if(!$this->res){
			die("查询出错".mysql_error());
			exit();
		}
		return $this->res;
  	}
  	/**
  	 * 执行update，delete，insert语句
  	 *
  	 * @param String $sql 传入要执行的语句
  	 * @return 0表示查询失败，1表示行数受影响，2表示0行受影响
  	 */
  	public function mysql_execute_dml($sql){
  		$b=mysql_query($sql,$this->conn) or die("1".mysql_error());
  		if(!$b){
  			return 0;//查询失败
  		}else if(mysql_affected_rows($this->conn)>0){
  			return 1;//多行受影响
  		}else{
  			return 2;//0行受影响
  			
  		}
  	}
  	public function mysql_exit(){
  		if($this->res){
  			mysql_free_result($this->res);
  		}
  		mysql_close($this->conn);
  	}
  	
  public function execute_dql_fenyaPage($sql1,$sql2,$page){
 	 	$res1=mysql_query($sql1,$this->conn) or die("1".mysql_error());
  		$arr = array();
  		//处理得到的信息
  		while($row = mysql_fetch_assoc($res1)){
  			$arr[]=$row;
  		}
		mysql_free_result($res1); 		
  		$res2 = mysql_query($sql2,$this->conn) or die("2".mysql_error());
  		if($row = mysql_fetch_row($res2)){
  			$page->rowCount= $row[0];
  		}
  		$page->pageCount = ceil($page->rowCount/$page->pageSize);
  		$page->res_array = $arr;
  		mysql_free_result($res2);
  		
  		
  		
  	}
  
  	
  	
  	
  	
  	
  }
  
  
  
  
  
  
  
  
  
 
  
  
  
  
  
  
  
?>