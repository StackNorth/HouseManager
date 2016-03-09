<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<link href="bg.css" type="text/css" rel="stylesheet">
</head>
<script type="text/javascript">
	/**
	 *本函数用来隐藏和显示select标签，当选择类型时，显示后续select，否则隐藏 
	 */
	function selectitem(){
			var name = document.getElementById("change").value;
			if(name == "type"){
				document.getElementById("selectType").style.display = "";
				document.getElementById("p").style.display = "";
				document.getElementById("p1").style.display = "";	
			}else{
				document.getElementById("selectType").style.display = "none";
				document.getElementById("p").style.display = "none";
				document.getElementById("p1").style.display = "none";
			}
		}
</script>
<body>
<center>
<h2>查询界面</h2>
	<form action="dealSelectInfo.php" method="post">
		<select name="change"  onChange="selectitem()" id="change">
			<option value="address">地址</option>
			<option value="roomid">房间号</option>
			<option value="area">面积</option>
			<option value="type">类型</option>
			<option value="mode">状态</option>
		</select>
		<p style="display:none;" id="p">请选择房间类型</p>
		<select name="selectType"  style="display:none;" id="selectType">
			<option value="两室一厅">两室一厅</option>
			<option value="一室一厅">一室一厅</option>
			<option value="两室两厅">两室两厅</option>
		</select>
		<p name='p1' id='p1' style='display:none'>或输入查询</p>
		<input type="text" name="name"/>
		<input type="submit" value="查询">
	</form>
	<a href="Main.php">返回</a>
	</center>
</body>
</html>