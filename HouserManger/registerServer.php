<?php
require_once 'user.php';
require_once 'mysqlTools.class.php';
class registerServer{
	private $tool;
	function __construct(){
		$this->tool = new mysqlTools();	
	}
	//向register表中注入数据
	public function registerUser($user){
		
		$sql = "insert into register values('".$user->getUser()."','".$user->getPassword()."','".$user->getSex()."','".$user->getEmail()."','".$user->getTel()."','".$user->getAdd()."')";
		if($this->tool->mysql_execute_dml($sql) == 1){
			//注册成功后向admin表中插入数据
			$sql1 = "insert into admin(user,password) values('".$user->getUser()."','".$user->getPassword()."')";
			if($this->tool->mysql_execute_dml($sql1)>0){
				return 1;//成功
			}
		}
		$this->tool->mysql_exit();
		return 0;//失败
	}
	
public function updateregisterByUser($user){
		$sql = "update register set user='".$user->getUser()."',password='".$user->getPassword()."',sex='".$user->getSex()."',email='".$user->getEmail()."',tel='".$user->getTel()."',address='".$user->getAdd()."' where user='".$user->getUser()."'";
		
		if($this->tool->mysql_execute_dml($sql)==1){
			
			//注册成功后向admin表中插入数据
			$sql1 = "update  admin set user='".$user->getUser()."',password='".$user->getPassword()."'where user='".$user->getUser()."'";
			if($this->tool->mysql_execute_dml($sql1)>0){
				return 1;//成功
			}
		}
		$this->tool->mysql_exit();
		return 0;//失败
	}
	

}

?>