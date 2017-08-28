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
				<#include "/common/menulist.ftl"> <!--右侧内容--> <!--下面就是自己的内容块-->
				<div class="col-md-10 list-right" id="changgebox"
					style="background: #ecf0f5; position: relative;">
					<div class="nothing">
					<!-- 自己的jie'm -->
						<div class="head-show" style="position: relative; height: 76px;">
							<h3 style="display: inline-block; float: left;">控制面板</h3>
							<ol class="breadcrumb pull-right"
								style="float: right; margin-top: 20px; background: transparent;">
								<li><a href="#"> <span class="glyphicon glyphicon-home"></span>
										首页
								</a></li>
								<li class="active">控制面板</li>
							</ol>
						</div>
						<!--四个面板-->
						<div class="container-fluid">
							<div class="row">
								<!--考勤签到-->
								<div class="col-md-3">
									<div class="jichu kaoqin">
										<div class="wenzi">
											<h2>未签到</h2>
											<p>请到考勤管理签到</p>
										</div>
										<div class="iconfont">
											<span class="glyphicon glyphicon-time"></span>
										</div>
										<a href="#" class="moreduo"> 更多 <span
											class="glyphicon glyphicon-circle-arrow-right"></span>
										</a>
									</div>
								</div>
								<!--文件管理-->
								<div class="col-md-3">
									<div class="jichu filecolor">
										<div class="wenzi">
											<h2>3</h2>
											<p>文件管理</p>
										</div>
										<div class="iconfont">
											<span class="glyphicon glyphicon-folder-open"></span>
										</div>
										<a href="#" class="moreduo"> 更多 <span
											class="glyphicon glyphicon-circle-arrow-right"></span>
										</a>
									</div>
								</div>
								<!--通讯录-->
								<div class="col-md-3">
									<div class="jichu tongxun">
										<div class="wenzi">
											<h2>4</h2>
											<p>通讯录</p>
										</div>
										<div class="iconfont">
											<span class="glyphicon glyphicon-earphone"></span>
										</div>
										<a href="#" class="moreduo"> 更多 <span
											class="glyphicon glyphicon-circle-arrow-right"></span>
										</a>
									</div>
								</div>
								<!--讨论区-->
								<div class="col-md-3">
									<div class="jichu chat">
										<div class="wenzi">
											<h2>5</h2>
											<p>讨论区</p>
										</div>
										<div class="iconfont">
											<span class="glyphicon glyphicon-comment"></span>
										</div>
										<a href="#" class="moreduo"> 更多 <span
											class="glyphicon glyphicon-circle-arrow-right"></span>
										</a>
									</div>
								</div>
							</div>
						</div>
						<!--右侧内容块完-->

					</div>
				</div>
				
			</div>
			<!-- 底部栏界面 --> 
			<#include "/common/footer.ftl">
		</div>
	</div>
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<!-- 		<script type="text/javascript" src="http://lib.sinaapp.com/js/jquery/1.9.0/jquery.js"></script>
 -->
	<script type="text/javascript" src="js/pjax.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {

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

			 /* pjax test */
			/*$('.test').on('click', function() {
				console.log("准备执行pjax");
				$.pjax({
					url : 'index/testcontrol',
					container : '#changgebox',
					maxCacheLength : 0,
					cache : false,
					fragment : "#changgebox",
					timeout : 8000
				});
			});
 */
		});
	</script>

</body>

</html>