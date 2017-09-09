<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<#include "/common/commoncss.ftl">
<link rel="stylesheet" type="text/css" href="css/common/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/file/filebox.css" />


<style type="text/css">
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
					<#if nowpath.parentId == 1>
						<h3 class="box-title" style="font-size: 12px;">${nowpath.pathName}</h3>
					<#else>
						<h3 class="box-title" style="font-size: 12px;">
							<a style="font-size: 12px;" href="filetest?pathid=${nowpath.parentId}">返回上一层 </a>
							>
							<#list allparentpaths as allparenth>
							<a style="font-size: 12px;" href="filetest?pathid=${allparenth.id}">${allparenth.pathName}</a>
							>
							</#list>
							${nowpath.pathName}
						</h3>
					</#if>
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
						<div class = "boxcontain" style="height: auto;">
							<#list paths as path>
								<div class="file-one">
									<div class="file-img path">
										<a href="filetest?pathid=${path.id}">
											<img src="images/fileimg/Folder.png" />
										</a>
									</div>
									<div class="file-name path">
										<a>${path.pathName}</a>
									</div>
									<input type="hidden" class = "pathmessage" value="${path.id}">
									<span class="file-check"> 
										<span class = "iconfont icon-xuanze" style="height:1.5em;width:1.5em"></span>
									</span>
								</div>
							</#list>
							<#list files as file>
								<div class="file-one">
									<#if file.fileShuffix == "zip">
											<div class="file-img">
												<img src="images/fileimg/ZIP.png" />
											</div>
										<#elseif file.fileShuffix == "mp4" || file.fileShuffix == "rmvb">
											<div class="file-img">
												<img src="images/fileimg/Video.png" />
											</div>
										<#elseif file.fileShuffix == "text" || file.fileShuffix == "word">
											<div class="file-img">
												<img src="images/fileimg/Text.png" />
											</div>
										<#else>
											<div class="file-img">
												<img src="" />
											</div>
									</#if>                                   
									<div class="file-name">
										<a>${file.fileName}</a>
										<input type="hidden" class = "filemessge" value="${file.fileId}">
									</div>
									<span class="file-check"> 
										<span class = "iconfont icon-xuanze" style="height:1.5em;width:1.5em"></span>
									</span>
								</div>
							</#list>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- -->
	<div class="modal">
		<div class="file-one diplaynone">
			<div class="file-img">
				<img src="images/fileimg/Folder.png" />
			</div>
			<div class="file-name">
				<a></a>
			</div>
			<input type="hidden" class = "pathmessage" value="">
			<span class="file-check"> 
				<span class = "iconfont icon-xuanze" style="height:1.5em;width:1.5em"></span>
			</span>
		</div> 
	</div>
</body>
<script src="js/common/iconfont.js"></script>
<!-- <script src="js/file/fileajax.js"></script> -->
<script src="js/file/filejs.js"></script>
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
		})
	</script>

</html>