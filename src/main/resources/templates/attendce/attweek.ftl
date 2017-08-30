<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1,
maximum-scale=1, user-scalable=no">
<title>控制面板主页</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/homelist.css" />
<link rel="stylesheet" href="css/controlpanel.css" />

</head>
<body>
	<div class="main">
		<div class="container-fluid">
			<!-- 上边的导航栏 -->
			<#include "/common/nav.ftl">
			<div class="row disappear">
				<!-- 左侧的菜单栏 -->
				<#include "/common/menulist.ftl"> 
				<!--右侧内容--> 
				<div class="col-md-10 list-right" id="changgebox"
					style="background: #ecf0f5; position: relative;">
					<!--下面就是自己的内容块-->
					<#include "/attendce/weektable.ftl">
				</div>
			</div>
			<!-- 底部栏界面 --> 
			<#include "/common/footer.ftl">
		</div>
	</div>
	

</body>

</html>