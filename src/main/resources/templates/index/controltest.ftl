<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1,
maximum-scale=1, user-scalable=no">
<title>控制面板主页</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/homelist.css" />
<script>
function  changepath(path){
	$('iframe').attr('src',path);
}
</script>
</head>
<body>
	<div class="main">
		<div class="container-fluid">
			<div class="row">
				<#include "/common/leftlist.ftl"> 
				<!--顶层右侧的导航栏，栅格系统分10份-->
				<div class="col-md-10 moredeep" style="padding: 0; margin: 0;">
					<!-- 导航栏 -->
					<#include "/common/navlist.ftl"> 
					<div class="col-md-12 list-right"
						style="background: #ecf0f5; position: relative;height:845px;">
						<div style="height:10px"></div>
						<!--内容区块--> 
						<!-- <iframe src="testsystype" frameBorder="0" width="100%" height="750px"></iframe> -->
						<iframe src="chatmanage" frameBorder="0" width="100%" height="750px"></iframe>
						<!-- 底部栏 -->
						<#include "/common/footerlist.ftl">
					</div>
				</div>
			</div>
		</div>
	</div>


</body>

</html>