<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<#include "/common/commoncss.ftl">
<link rel="stylesheet" type="text/css" href="css/common/iconfont.css" />

<style type="text/css">
/* .icon {
	width: 1.5em;
	height: 1.5em;
	vertical-align: -0.15em;
	fill: currentColor;
	overflow: hidden;
} */

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

.file-box {
	border-top: 1px solid #f4f4f4;
	position: relative;
	height: 600px;
	overflow: hidden;
}

.file-one {
	width: 120px;
	height: 127px;
	float: left;
	margin: 4px 0 0 6px;
	text-align: center;
	border: 1px solid #fff;
	position: relative;
}

.file-one-houver {
	border: 1px solid #f1f5fa;
	border-radius: 5px;
	background: #f1f5fa;
}

.file-one-check {
	border: 1px solid #90c3fd;;
	border-radius: 5px;
	background: #f1f5fa;
}

.file-img {
	position: relative;
	margin: 9px auto 0;
	width: 84px;
	height: 84px;
	background-repeat: no-repeat;
	overflow: hidden;
}

.file-img img {
	padding-top: 15px;
}

.file-name {
	display: block;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	margin: 6px 5px 5px;
}

.file-check {
	position: absolute;
	top: 5px;
	left: 5px;
	height: 21px;
	width: 21px;
	display: none;
	cursor: pointer;
	/*color: #0099CC;*/
}

.file-one-houver .file-check {
	display: block;
	color: #B9DEF0;
}

.file-one-check .file-check {
	display: block;
	color: #00BBEE;
}
</style>
</head>

<body style="background-color: #ecf0f5;">


	<div class="row" style="padding-top: 10px;">
		<div class="col-md-2">
			<h1 style="font-size: 24px; margin: 0;" class="">文件管理</h1>
		</div>
		<div class="col-md-10 text-right">
			<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> >
			<a disabled="disabled">文件管理</a>
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
							class="iconfont icon-suoyougongneng"></span> 全部文件</a></li>
					<li><a href="##"><span class="iconfont icon-icon4"></span>
							文档</a></li>
					<li><a href="##"><span class="iconfont icon-tupian"></span>
							图片</a></li>
					<li><a href="##"><span class="iconfont icon-yinyue"></span>
							音乐</a></li>
					<li><a href="##"><span
							class="iconfont icon-shipin"></span> 视频</a></li>
					<li><a href="##"><span
							class="iconfont icon-yasuobao"></span> 压缩包</a></li>
					<li><a href="##"><span class="iconfont icon-fenxiang"></span>
							共享文件</a></li>
					<li>
						<!--<a class="pjax" href="box.html">--> <a href="##"><span
							class="iconfont icon-lajitong"></span> 回收战</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="col-md-9">
			<!--id="container"-->
			<div class="bgc-w box box-primary" style="height: 695px;">
				<!--盒子头-->
				<div class="box-header">
					<h3 class="box-title" style="font-size: 12px;">全部文件</h3>
					<div class="box-tools">
						<div class="input-group" style="width: 150px;">
							<input type="text" class="form-control input-sm"
								placeholder="查找..." />
							<div class="input-group-btn">
								<a class="btn btn-sm btn-default btn-change"><span
									class="glyphicon glyphicon-search"></span></a>
							</div>
						</div>
					</div>
				</div>
				<!--盒子身体-->
				<div class="box-body no-padding">
					<div style="padding: 5px;">
						<a class="btn btn-sm btn-default allcheck"
							href="javascript:void(0);" title="全选/反选"><span
							class="iconfont icon-xuanze1"></span></a>
						<div class="btn-group">
							<a class="btn btn-sm btn-default" href="" title="删除"><span
								class="iconfont icon-lajitong"></span></a> 
								<a class="btn btn-sm btn-default" href="" title="新建文件夹">
									<span class="iconfont icon-xinzengwenjian"></span>
								</a>
						</div>
						<a class="btn btn-sm btn-default" href="" title="刷新"><span
							class="iconfont icon-shuaxin"></span></a>
					</div>
					<div class="file-box" style="overflow-y: auto;">
						<div style="height: auto;">
							<div class="file-one">
								<div class="file-img">
									<img src="images/fileimg/Folder.png" />
								</div>
								<div class="file-name">
									<a>罗翔的私房照</a>
								</div>
								<span class="file-check"> 
									<!-- <svg class="icon" aria-hidden="true">
										<use xlink:href="#icon-xuanze"></use>
									</svg> -->
									<span class = "iconfont icon-xuanze" style="height:1.5em;width:1.5em"></span>
								</span>
							</div>
							<div class="file-one">
								<div class="file-img">
									<img src="images/fileimg/Folder.png" />
								</div>
								<div class="file-name">
									<a>罗翔的私房照</a>
								</div>
								<span class="file-check"> 
									<!-- <svg class="icon" aria-hidden="true">
										<use xlink:href="#icon-xuanze"></use>
									</svg> -->
									<span class = "iconfont icon-xuanze" style="height:1.5em;width:1.5em"></span>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<script src="js/common/iconfont.js"></script>
<script type="text/javascript">
		$(function() {
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
			
			
			
			/**
			 * 文件展示 js
			 */ 
			
			$(".file-box .file-one").hover(function(){
				//console.log("hover!~");
				$(this).addClass("file-one-houver");
			},function(){
				//console.log("no hover");
				$(this).removeClass("file-one-houver");
			});
			
			$(".file-box .file-check").click(function(){
				if($(this).parent(".file-one").hasClass("file-one-check")){
					$(this).parent(".file-one").removeClass("file-one-check");
				}else{
					$(this).parent(".file-one").addClass("file-one-check");
				}
			});
			
			$(".allcheck").click(function(){
				var fileone = $(".file-one");
				if($(this).hasClass("allchecked")){
					$(".file-one").each(function(){
						$(".file-one").removeClass("file-one-check");
					});
					$(this).removeClass("allchecked");
				}else{
					$(".file-one").each(function(){
						$(".file-one").addClass("file-one-check");
					});
					$(this).addClass("allchecked");
				}
			});
		})
	</script>

</html>