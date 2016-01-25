<?php
require_once 'mysqlTools.class.php';
require_once 'admin.php';
class adminServer{
	private $tool;
	function __construct(){
		$this->tool = new mysqlTools();	
	}
	function checkAdmin($user,$password){
		$sql="select user,password from admin where user='".$user."'";
		$res=$this->tool->mysql_execute_dql($sql);
		if($row = mysql_fetch_assoc($res)){
			if($user==$row['user']&&$password==$row['password']){
					return $row['user'];//查询成功
			}else{
				$sql1="update admin set loginNum=loginNum+1 where user='".$user."'";
				$this->tool->mysql_execute_dml($sql1);
				
			}
		}
		$this->tool->mysql_exit();
		return NULL;
	}
	
	public function InquireLoginNum($id){
		$loginNum = 0;
		$sql = "select loginNum from admin where user='".$id."'";
		$res = $this->tool->mysql_execute_dql($sql);
		if($row = mysql_fetch_assoc($res)){
			$loginNum = $row['loginNum'];
		}
		$this->tool->mysql_exit();
		return 	$loginNum;		
	}
		/**
	 * 判断是否是管理员登录
	 *
	 * @param unknown_type $user
	 * @return unknown
	 */
	public function AdminLogin($user,$password){
		$sql = "select * from admin where user='".$user."'";
		$res = $this->tool->mysql_execute_dql($sql);
		if($row = mysql_fetch_assoc($res)){
			if($user==$row['user']&&$password==$row['password']){
				if($row['level'] == '1')		
					return $row['user'];//查询成功
			}
		}
		$this->tool->mysql_exit();
		return NULL;
	}
	
	public function queryAdmin(){
		$sql = "select * from admin ";
		$res = $this->tool->mysql_execute_dql($sql);
		echo "<table border=1px><tr><td>用户名</td><td>密码</td><td>等级</td><td>登录次数</td></tr>";
		while($row = mysql_fetch_assoc($res)){
			echo "<tr><td>".$row['user']."</td><td>".$row['password']."</td><td>".$row['level']."</td><td>".$row['loginNum']."</td></tr>";
		}	
		echo "</table>";
		$this->tool->mysql_exit();
	}
	public function insertAdmin($admin){
		$sql = "insert into admin values('".$admin->getName()."','".$admin->getPassword()."','".$admin->getLoginNum()."','".$admin->getLevel()."')";
		$res = $this->tool->mysql_execute_dml($sql);
		$this->tool->mysql_exit();
		return $res;
	}
	public function delAdmin($user){
		$sql = "delete from admin where user ='".$user."'";
		$res = $this->tool->mysql_execute_dml($sql);
		$this->tool->mysql_exit();
		return $res;
	}
	public function selectInfoByUser($user){
		$sql = "select * from admin where user= '".$user."'";
		$res = $this->tool->mysql_execute_dql($sql);
		$admin = new admin();
		if($row = mysql_fetch_assoc($res)){
				$admin->setName($row['user']);
				$admin->setLevel($row['level']);
				$admin->setLoginNum($row['loginNum']);
				$admin->setPassword($row['password']);
		}
		return $admin;
	}
	public function updateAdmin($admin){
		$sql = "update admin set user='".$admin->getName()."',password='".$admin->getPassword()."',level='".$admin->getLevel()."',loginNum='".$admin->getLoginNum()."' where user='".$admin->getName()."'";
		$res = $this->tool->mysql_execute_dml($sql);
		$this->tool->mysql_exit();
		return $res;
	}
	
}
?>