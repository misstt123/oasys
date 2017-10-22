<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1,
maximum-scale=1, user-scalable=no">
<link href="images/favicon1.ico" rel="icon" type="image/x-icon"/>
<link href="images/favicon1.ico" rel="shortcut icon" type="image/x-icon"/>
<title>控制面板主页</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/common/tocolor.js"></script>
<link rel="stylesheet" href="css/homelist.css" />
<link rel="stylesheet" href="css/common/skintheme.css" />

	<script type="text/javascript">
		$(function(){
			var themeSkin='${user.themeSkin}';
			if(themeSkin=="blue"){
				toblue();
			}else if(themeSkin=="green"){
				togreen();
			}else if(themeSkin=="yellow"){
				toyellow();
			}else if(themeSkin=="red"){
				tored();
			}
		});
	</script>
<script>
	function changepath(path){
		$('iframe').attr('src',path);
	}
</script>
<#include "/common/iosstyle.ftl">
</head>
<body>

	<div class="main">
		<div class="container-fluid">
			<div class="row">
				<#include "/common/leftlist.ftl"> <!--顶层右侧的导航栏，栅格系统分10份-->
				<div class="col-md-10 moredeep" style="padding: 0; margin: 0;">
					<!-- 导航栏 -->
					<#include "/common/navlist.ftl">
					<div class="col-md-12 list-right"
						style="background: #ecf0f5; position: relative; height: 845px;padding: 0;">
						<!--内容区块-->
						<iframe src="test2" frameBorder="0" width="100%" height="92%"></iframe>
						<!-- 底部栏 -->
						<#include "/common/footerlist.ftl">
					</div>
				</div>
			</div>
		</div>
	</div>


</body>

</html>