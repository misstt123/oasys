<div style="clear: both;"></div>

<div class="row">
	<div class="col-md-2" style="background: #222d32;">
		<div
			style=" display: inline-block; height: 40px; float: left; background: #222d32;">
		</div>
	</div>
	<div class="col-md-10">
		<div style="line-height: 40px; display: inline-block; float: left;">
			<strong> Copyright © 2017 <a href="http://www.zxyoo.cn">zxyoo</a>.
			</strong> All rights reserved.

		</div>
		<div class="pull-right"
			style="display: inline-block; line-height: 40px;">
			2017年08月27日，星期日</div>
	</div>
</div>

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

		/* 最大最小化 */
		$('.right-btn-group').on(
				'click',
				'a',
				function() {

					var gly = $(this).children('button').children().hasClass(
							'glyphicon-minus');
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

	

		//点击按钮，左侧菜单栏收缩，右侧拉伸过去
		/* $('.navbar-left li').on('click', function() {
			$('.col-md-2').removeClass('col-md-2').addClass('col-md-0');
			$('.col-md-10').removeClass('col-md-10').addClass('col-md-12');
<<<<<<< HEAD
		}); */
		/*关闭面板  */
		$('.glyphicon-remove').on('click', function() {
			console.log($(this).closest('.box-show'));
			if (!confirm("确定关闭吗？")) {
				return false;
			}
<<<<<<< HEAD
				$(this).closest('.box-show').css('display','none');
=======
			$(this).closest('.box-show').css('display', 'none');
>>>>>>> refs/remotes/origin/zhx
		});
	});
</script>
