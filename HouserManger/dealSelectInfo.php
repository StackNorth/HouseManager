<?php
	require_once 'homeServer.php';
	header("content-type:text/html;charset=utf-8");
	$change;
	$value;
	$res;
	$count=0;
	if($_POST['change'] != NULL){
		$change = $_POST['change']; 
		$value =$_POST['name'];
	}
	if( $change =="type" || $value != NULL){
		$hsr = new homeServer();
		if($change == "roomid"){
			$res  = $hsr->select_roomid($value);
		}else if($change == "address"){
			$res  = $hsr->select_address($value);
		}else if($change == "type"){
			if($value !=NULL)
				$res  = $hsr->select_type($value);
			else{
				$selectType=$_POST['selectType'];
				$res  = $hsr->select_type($selectType);
			}
		}else if($change == "mode"){
			$res  = $hsr->select_mode($value);
		}else if($change == "area"){
			$res  = $hsr->select_area($value);
		}
		echo "<table border='1px'>";
		echo "<tr><td>roomid</td><td>address</td><td>type</td><td>mode</td><td>area</td></tr>";
		while($row = mysql_fetch_assoc($res)){
			echo "<tr><td>".$row['roomid']."</td><td>".$row['address']."</td><td>".$row['type']."</td><td>".$row['mode']."</td><td>".$row['area']."</td></tr>";
			$count++;	
		}
		echo "</table>";
		if($count ==0)echo "查询出错";
		$hsr->close();
	}else{
		echo "查询出错";
		
	}
	
	echo "<a href='selectInfo.php'>返回</a>";
	
?>