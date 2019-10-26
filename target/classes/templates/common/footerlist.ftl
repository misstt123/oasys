<!-- <div class="container-fluid" style="padding: 0;">
	<div class="row"> -->
		<div class="col-md-12" id="ss"
			style="background: white; padding: 15px; position: absolute; bottom: 0;height:50px;">
			<strong> Copyright © 2017 <a href="http://www.zxyoo.cn">zxyoo</a>.
			</strong> All rights reserved.
			<div class="pull-right currt-time" style="display: inline-block;margin-right: 20px;">
				2017年08月27日，星期日</div>
		</div>
	<!-- </div>
</div> -->
<script type="text/javascript">

			$(function() {
				/*通过改变iframe来改变里面的内容块  */
				function changepath(path) {
					$('iframe').attr('src', path);
				}
				/*获取当前时间并显示在底部栏  */
				var day = new Date();
				var week = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
				s = day.getFullYear() + "年";
				s = s + (day.getMonth()+1) + "月";
				s = s + day.getDate() + "日,";
				s = s + week[day.getDay()];
				console.log(s);
				$(".currt-time").text(s);

				
				$('.open-menu').on('click', function() {
					$('.glyphicon-menu-down').each(function() {
						$(this).removeClass('glyphicon-menu-down').addClass("glyphicon-menu-left");
					});
					console.log($(this).children('.pull-right').hasClass('glyphicon-menu-down'));
					if($(this).children('.pull-right').hasClass('glyphicon-menu-left')){
						$(this).children('.pull-right').removeClass('glyphicon-menu-left').addClass("glyphicon-menu-down");
					}
					else{
						$(this).children('.pull-right').removeClass('glyphicon-menu-down').addClass("glyphicon-menu-left");
					}
					
					$('.open-menu').each(function() {
						$(this).css("border-left", "3px solid transparent");
					});
					$(this).css("border-left", "3px solid #00a65a");
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

				/* $('.right-btn-group a').on('click', function() {
					//获取右侧内容板的高度；设置面板的高度
					console.log($('.list-right').height());
					$('.list-left').height($('.list-right').height());
					$('.list-right').height($('.list-right').height());
				}) */
				//获取右侧内容板的高度；设置面板的高度
				if(window.screen.height<800){
					$('.list-left').height(850);
					$('.list-right').height(850);
				}else{
					$('.list-left').height(window.screen.height-50);
					$('.list-right').height(window.screen.height-50);
				}
				
				/* console.log("右边的高度"+$('.list-right').height());
				console.log(" 网页可见区域高："+ document.body.clientHeight);
				console.log(" 网页正文全文高："+ document.body.scrollHeight);
				console.log(" 屏幕分辨率的高："+ window.screen.height);
				console.log(" 屏幕可用工作区高度："+ window.screen.availHeight);
				console.log(" 网页正文全文高："+ document.body.scrollHeight);
				console.log(" 屏幕分辨率的高："+ window.screen.height); */ 
				/* $('.list-left').height($('.list-right').height()); */
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