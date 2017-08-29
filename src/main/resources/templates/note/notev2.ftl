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
					style="background: #ecf0f5; position: relative;padding-top: 20px;">
					<!--下面就是自己的内容块-->
					<#include "/note/noteedit.ftl">
				</div>
			</div>
			<!-- 底部栏界面 --> 
			<#include "/common/footer.ftl">
		</div>
	</div>
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {
		/* 菜单向左向下箭头变化 */
			$('.open-menu').on(
					'click',
					function() {
						$('.glyphicon-menu-down').each(
								function() {
									$(this).removeClass('glyphicon-menu-down')
											.addClass("glyphicon-menu-left");
								});
						$(this).children('.pull-right').removeClass(
								'glyphicon-menu-left').addClass(
								"glyphicon-menu-down");
						$('.open-menu').each(
								function() {
									$(this).css("border-left",
											"3px solid transparent");
								});
						$(this).css("border-left", "3px solid #00a65a");
					});

			//基础图标放大缩小
			$('.jichu').on('mouseover', function() {
				$(this).children('.iconfont').css('font-size', '88px');
			});

			$('.jichu').on('mouseout', function() {
				$(this).children('.iconfont').css('font-size', '76px');
			});

			/* 最大最小化 */
			$('.right-btn-group').on(
					'click',
					'a',
					function() {

						var gly = $(this).children('button').children()
								.hasClass('glyphicon-minus');
						var child = $(this).children('button').children(
								'.glyphicon');
						if (gly) {
							child.removeClass('glyphicon-minus').addClass(
									'glyphicon-plus');
						} else {
							child.removeClass('glyphicon-plus').addClass(
									'glyphicon-minus');
						}

					});

			$('.right-btn-group a').on('click', function() {
				//获取右侧内容板的高度；设置面板的高度
				console.log($('.list-right').height());
				$('.list-left').height($('.list-right').height());
				$('.list-right').height($('.list-right').height());
			})
			//获取右侧内容板的高度；设置面板的高度
			console.log($('.list-right').height());
			$('.list-left').height($('.list-right').height());
			$('.list-right').height($('.list-right').height());

			//点击按钮，左侧菜单栏收缩，右侧拉伸过去
			$('.navbar-left li').on('click', function() {
				$('.col-md-2').removeClass('col-md-2').addClass('col-md-1');
				$('.col-md-10').removeClass('col-md-10').addClass('col-md-11');
			});

		});
	</script>

</body>

</html>