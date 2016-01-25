<?php
require_once 'mysqlTools.class.php';


class homeServer  {
	private $mst="";
	private $res;
	public function __construct(){
		$this->mst = new mysqlTools(); 
	}
	/**
	 * Enter description here...
	 *
	 * @param unknown_type $roomid
	 * @return unknown
	 */
	public function select_roomid($roomid){
		$sql = "select * from home where roomid='".$roomid ."'";
		$this->res = $this->mst->mysql_execute_dql($sql);
				
		return $this->res;
	}
	/**
	 * Enter description here...
	 *
	 * @param unknown_type $roomid
	 * @return unknown
	 */
	public function select_address($address){
		$sql = "select * from home where address like '%".$address ."%'";
		$this->res = $this->mst->mysql_execute_dql($sql);	
		return $this->res;
	}
	/**
	 * Enter description here...
	 *
	 * @param unknown_type $roomid
	 * @return unknown
	 */
	public function select_area($area){
		$sql = "select * from home where area >'".$area ."'";
		$this->res = $this->mst->mysql_execute_dql($sql);		
		return $this->res;
	}
	/**
	 * Enter description here...
	 *
	 * @param unknown_type $type
	 * @return unknown
	 */
	public function select_type($type){
		$sql = "select * from home where type like '%".$type."%'";
		$this->res = $this->mst->mysql_execute_dql($sql);		
		return $this->res;
	}
	/**
	 * Enter description here...
	 *
	 * @param unknown_type $type
	 * @return unknown
	 */
	public function select_mode($mode){
		$sql = "select * from home where mode like '%".$mode."%'";
		$this->res = $this->mst->mysql_execute_dql($sql);		
		return $this->res;
	}
	public function close(){
		$this->mst->mysql_exit();
	}
	
	
}


?>