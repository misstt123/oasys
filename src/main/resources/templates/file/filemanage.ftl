<link rel="stylesheet" type="text/css" href="css/common/box.css" />
<link rel="stylesheet" type="text/css" href="css/common/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/common/checkbox.css" />
<style type="text/css">
.icon {
	width: 1em;
	height: 1em;
	vertical-align: -0.15em;
	fill: currentColor;
	overflow: hidden;
}

a {
	color: black;
}

a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}

.box .nav-stacked>li {
	border-bottom: 1px solid #f4f4f4;
	margin: 0;
}

.nav-stacked>li>a {
	border-radius: 0;
	border-top: 0;
	border-left: 3px solid transparent;
	color: #444;
}

li.activee>a {
	border-left-color: #3c8dbc;
}

.des {
	border: none;
	color: #9e9e9e;
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">文件管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">文件管理</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-3">
		<a class="btn btn-primary" href="##"
			style="width: 100%; margin-bottom: 20px;"><span
			class="glyphicon glyphicon-open"></span> 上传</a>
		<div class="bgc-w box box-solid">
			<div class="box-header">
				<h3 class="box-title">云盘</h3>
				<span class="btn btn-default pull-right btn-xs des mm"> <i
					class="glyphicon glyphicon-minus"></i>
				</span>
			</div>
			<ul class="nav nav-pills nav-stacked mm">
				<li class="activee"><a href="##"> <span
						class="glyphicon glyphicon-time"> 最近</span></a></li>
				<li>
					<!--<a class="pjax" href="box.html">--> <a href="##"><span
						class="glyphicon glyphicon-file"></span> 文档</a>
				</li>
				<li><a href="##"><span class="glyphicon glyphicon-picture"></span>
						图片</a></li>
				<li><a href="##"><span class="glyphicon glyphicon-music"></span>
						音乐</a></li>
				<li><a href="##"><span
						class="glyphicon glyphicon-facetime-video"></span> 视频</a></li>
				<li><a href="##"><span
						class="glyphicon glyphicon-briefcase"></span> 压缩包</a></li>
			</ul>
		</div>

		<div class="bgc-w box box-solid">
			<div class="box-header">
				<h3 class="box-title">类型</h3>
				<span class="btn btn-default pull-right btn-xs des"> <i
					class="glyphicon glyphicon-minus"></i>
				</span>
			</div>
			<ul class="nav nav-pills nav-stacked">
				<li><a href="##"> <svg class="icon" aria-hidden="true">
											<use xlink:href="#icon-kongxinquan"></use>
										</svg> 我的文件
				</a></li>
				<li><a href="##"> <svg class="icon" aria-hidden="true">
											<use xlink:href="#icon-kongxinquan"></use>
										</svg> 公司文件
				</a></li>
				<li><a href="##"> <svg class="icon" aria-hidden="true">
											<use xlink:href="#icon-kongxinquan"></use>
										</svg> 共享
				</a></li>
			</ul>
		</div>
	</div>
	<div class="col-md-9">
		<!--id="container"-->
		<div class="bgc-w box box-primary">
			<!--盒子头-->
			<div class="box-header">
				<h3 class="box-title">最近</h3>
				<div class="box-tools">
					<div class="input-group" style="width: 150px;">
						<input type="text" class="form-control input-sm"
							placeholder="查找..." />
						<div class="input-group-btn">
							<a class="btn btn-sm btn-default"><span
								class="glyphicon glyphicon-search"></span></a>
						</div>
					</div>
				</div>
			</div>
			<!--盒子身体-->
			<div class="box-body no-padding">
				<div style="padding: 5px;">
					<a class="btn btn-sm chec btn-default" title="全选/反选"><span
						class="glyphicon glyphicon-unchecked"></span></a>
					<div class="btn-group">
						<a class="btn btn-sm btn-default" href="" title="删除"><span
							class="glyphicon glyphicon-trash"></span></a> 
							<a class="btn btn-sm btn-default" href="" title="新建文件夹">
							<span class="glyphicon glyphicon-folder-open"></span>
							</a>
					</div>
					<a class="btn btn-sm btn-default" href="" title="刷新"><span
						class="glyphicon glyphicon-refresh"></span></a>
				</div>
				<div class="table-responsive">
					<table class="table table-hover table-striped">
						<tr>
							<th scope="col">选择</th>
							<th scope="col">&nbsp;</th>
							<th scope="col">类型</th>
							<th scope="col">标题</th>
							<th scope="col">格式</th>
							<th scope="col">大小</th>
							<th scope="col">更新</th>
							<th scope="col">状态</th>
							<th scope="col">操作</th>
						</tr>
						<tr>
							<td style="text-align: center;">
								<span class="labels"><label><input name="items" type="checkbox"><i>✓</i></label></span>
							</td>
							<td><img src="img/folder.png" style="width: 25px;" /></td>
							<td><span>我的文件</span></td>
							<td class="mailbox-subject"><span>新建文件夹sfsf</span></td>
							<td></td>
							<td></td>
							<td><span>2017/8/16 19:24:04</span></td>
							<td>
								<div class="label label-info">一般</div>
							</td>
							<td><a title="修改" href="##" class="label label-primary"><span
									class="glyphicon glyphicon-edit"></span> 修改</a> <a title="打开文件夹"
								href="##" class="label label-default"><span
									class="glyphicon glyphicon-folder-open"></span> 打开</a> <a
								onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" title="删除"
								href="" class="label label-danger"><span
									class="glyphicon glyphicon-remove"></span> 删除</a></td>
						</tr>
						<tr>
							<td style="text-align: center;">
								<span class="labels"><label><input name="items" type="checkbox"><i>✓</i></label></span>
							</td>
							<td><img src="img/folder.png" style="width: 25px;" /></td>
							<td><span>我的文件</span></td>
							<td class="mailbox-subject"><span>新建文件夹sfsf</span></td>
							<td></td>
							<td></td>
							<td><span>2017/8/16 19:24:04</span></td>
							<td>
								<div class="label label-warning">重要</div>
							</td>
							<!--style="padding: 0.4em .6em .3em;"-->
							<td><a title="修改" href="" class="label label-primary"><span
									class="glyphicon glyphicon-edit"></span> 修改</a> <a title="打开文件夹"
								href="##" class="label label-default"><span
									class="glyphicon glyphicon-folder-open"></span> 打开</a> <a
								onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" title="删除"
								href="" class="label label-danger"><span
									class="glyphicon glyphicon-remove"></span> 删除</a></td>
						</tr>
					</table>
				</div>
			</div>
			<!--盒子尾-->
			<div class="box-footer no-padding" style="margin-top: -20px;">
				<div style="padding: 5px;">
					<div id="page"
						style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
						<div style="width: 40%; float: left;">
							<div class="pageInfo" style="margin-left: 5px;">
								共<span>2</span>条 | 每页<span>20</span>条 | 共<span>1</span>页
							</div>
						</div>
						<div style="width: 60%; float: left;">
							<div class="pageOperation">
								<a class="btn btn-sm btn-default no-padding"
									style="width: 30px; height: 20px;"> <span
									class="glyphicon glyphicon-backward"></span>
								</a> <a class="btn btn-sm btn-default no-padding"
									style="width: 30px; height: 20px;"> <span
									class="glyphicon glyphicon-triangle-left"></span>
								</a> <a disabled="disabled" class="btn btn-default no-padding"
									style="width: 30px; height: 20px;"> 1 </a> <a
									class="btn btn-sm btn-default no-padding"
									style="width: 30px; height: 20px;"> <span
									class="glyphicon glyphicon-triangle-right"></span>
								</a> <a class="btn btn-sm btn-default no-padding"
									style="width: 30px; height: 20px;"> <span
									class="glyphicon glyphicon-forward"></span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="js/common/iconfont.js"></script>
	<script type="text/javascript">
		$(function() {
			//			$('.pjax').bind('click', function() {
			//				$('.select').removeClass('select');
			//				$(this).addClass('select');
			//				$.ajax({
			//					type: 'GET',
			//					url: this.href,
			//					success: function(data) {
			//						$('#container').html(data);
			//					}
			//				});
			//				window.history.pushState({
			//					url: this.href
			//				}, null, this.href);
			//				return false;
			//			});
			//			window.addEventListener("popstate", function() {
			//				$.ajax({
			//					type: 'GET',
			//					url: location.href,
			//					success: function(data) {
			//						$('#container').html(data);
			//					}
			//				});
			//			});
			/*
			 * 收縮
			 */
			$(".des").click(function() {

				var $this = $(this).children();

				var $ul = $(this).parents(".box-header").next();

				if($(this).hasClass("mm")) {
					if($this.hasClass("glyphicon-minus")) {
						$this.removeClass("glyphicon-minus").addClass("glyphicon-plus");
					} else {

						$this.removeClass("glyphicon-plus").addClass("glyphicon-minus");
					}
					$ul.slideToggle(1000);
				} else {
					if($this.hasClass("glyphicon-minus")) {
						$this.removeClass("glyphicon-minus").addClass("glyphicon-plus");
					} else {

						$this.removeClass("glyphicon-plus").addClass("glyphicon-minus");
					}
					$ul.slideToggle(1000);
				}
			});

			$(".nav.mm").on("click", "li", function() {
				$(this).parent().children(".activee").removeClass("activee");
				$(this).addClass("activee");
			});
			
			$("[name=items]:checkbox").click(function(){
           		var flag=true;
           		
           		$("[name=items]:checkbox").each(function(){
           			if(!this.checked){
           				flag=false;
           			}
           		});
           		if(flag){
           			    $(".chec span").removeClass("glyphicon-unchecked").addClass("glyphicon-stop");
           		}else{
           			$(".chec span").removeClass("glyphicon-stop").addClass("glyphicon-unchecked");
           		}
           		if ($(this).prop('checked')) {
           			 $(this).attr("checked","checked");
           		} else {
           			$(this).removeAttr("checked");
           		}
           
           	});
           	
           	$(".chec").click(function(e){
           		e.preventDefault();
           		var $this=$(".chec span");
           		if($this.hasClass("glyphicon-unchecked")){
           			 $(".chec span").removeClass("glyphicon-unchecked").addClass("glyphicon-stop");
           		}else{
           			$(".chec span").removeClass("glyphicon-stop").addClass("glyphicon-unchecked");
           		}
           		$("[name=items]:checkbox").each(function(){
           			
           			if($this.hasClass("glyphicon-stop")){
           				/*$(this).prop("checked","checked");*/
           				$(this).prop("checked",!$(this).attr("checked"));
           			}else{
           				$(this).removeAttr("checked");
           			}
           		});
           	});
		});
	</script>