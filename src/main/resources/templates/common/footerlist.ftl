<div class="container-fluid" style="padding: 0;">
	<div class="row">
		<div class="col-md-12" id="ss"
			style="background: white; padding: 15px; position: absolute; bottom: 0;height:50px;">
			<strong> Copyright © 2017 <a href="http://www.zxyoo.cn">zxyoo</a>.
			</strong> All rights reserved.
			<div class="pull-right" style="display: inline-block;">
				2017年08月27日，星期日</div>
		</div>
	</div>
</div>
<script type="text/javascript">

			$(function() {

				
				$('.open-menu').on('click', function() {
					$('.glyphicon-menu-down').each(function() {
						$(this).removeClass('glyphicon-menu-down').addClass("glyphicon-menu-left");
					});
					$(this).children('.pull-right').removeClass('glyphicon-menu-left').addClass("glyphicon-menu-down");
					$('.open-menu').each(function() {
						$(this).css("border-left", "3px solid transparent");
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

				$('.right-btn-group').on('click', 'a', function() {

					var gly = $(this).children('button').children().hasClass('glyphicon-minus');
					var child = $(this).children('button').children('.glyphicon');
					if(gly) {
						child.removeClass('glyphicon-minus').addClass('glyphicon-plus');
					} else {
						child.removeClass('glyphicon-plus').addClass('glyphicon-minus');
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
				//				$('.list-right').height($('.list-right').height());

				//点击按钮，左侧菜单栏收缩，右侧拉伸过去
				$('.navbar-left li').on('click', function() {
					
					if($('#smallDiv').css('display') == "none") {
						$('.col-md-2').css('display', 'none');
						$('.col-md-10').removeClass('col-md-10').addClass('col-md-11');
						$('.col-md-11').css('width', '97%');
						$('#smallDiv').css({
							'display': 'block',
							'width': '3%'
						});
						$('.list-left').height($('.list-right').height());
					} else {
						$('#smallDiv').css('display', 'none');
						$('.col-md-2').css('display', 'block');
						$('.col-md-11').removeClass('col-md-11').addClass('col-md-10');
						$('.col-md-10').css('width', '');
						$('.list-left').height($('.list-right').height());
					}
				
				});

			});
		</script>