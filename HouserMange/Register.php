<html>
<head>
	<meta http-equiv="content-type" content="html/text;charset=utf-8">
	<link href="bg.css" type="text/css" rel="stylesheet">
</head>
<body>
	<form action="rRegister.php" method="get">
		<center>
		<table height="50px"><tr></tr></table>
			<h2>注册</h2>
			<table>
				<tr><td>账 号:</td><td><input type="text" name="user" ></td></tr>
				<tr><td>密 码:</td><td><input type="text" name="password"></td></tr>
				<tr><td>性 别:</td><td><input type="radio" name="sex" value="女" >女 &nbsp;<input type="radio" name="sex" value="男" >男</td></tr>
				<tr><td>邮 箱:</td><td><input type="text" name="email"></td></tr>
				<tr><td>电 话:</td><td><input type="text" name="tel"></td></tr>
				<tr><td>地 址:</td><td><input type="text" name="add"></td></tr>
			</table>
			<input type="submit" value="注册">&nbsp<input type="reset" value="重置">
			</br><a href="index.php">返回登录界面</a><!-- submit 提交，reset重置 ，button按钮 -->
		</center>
	</form>
</body>
</html>