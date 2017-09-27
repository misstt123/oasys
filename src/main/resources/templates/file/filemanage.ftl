<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<#include "/common/commoncss.ftl">
<link rel="stylesheet" type="text/css" href="css/common/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/file/filebox.css" />
<link rel="stylesheet" type="text/css" href="css/file/filemodal.css" />


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
	border-left-color: #3c8dbc !important;
}

.des {
	border: none;
	color: #9e9e9e;
}
.menu{
	position: fixed;
    left:0;
    top:0;
    min-width:114px;
    background-color: #fff;
    display: none;
    z-index:30;
    box-shadow:0 0 10px #999999;
    border-radius: 5px;
}
.menu .nav li a{
	padding:5px 15px;
}
.menu a.disabled{
	pointer-events: none;
    filter: alpha(opacity=50); /*IE滤镜，透明度50%*/
    -moz-opacity: 0.5; /*Firefox私有，透明度50%*/
    opacity: 0.5; /*其他，透明度50%*/
}
.creatpath .creatpathinput{
	height:23px;
	width:78px;
	font-size: 12px;
	border: 1px solid rgba(58,140,255,.3);
	border-radius: 2px;
	padding-top: 0px;
    padding-left: 4px;
}
 .creatpath .creatpathinput:focus{
	outline: none; 
	border: 1px solid #0099CC;
	border-radius: 2px;
} 
.creatpath .btn-default{
	padding: 0px 4px 0px 4px;
	border:1px solid rgba(58,140,255,.3);
	color: #3b8cff;
}
.creatpath .btn-default:hover{
	background-color: #fff !important;
}
</style>
</head>

<body style="background-color: #ecf0f5;">
	<div class = "menu">
		<ul class="nav nav-pills nav-stacked" style="padding:5px 0 5px 0;">
			<li><a class="open">打开</a></li>
			<li><a class="downloadfile">下载</a></li>
			<li><a>分享</a></li>
			<li><a class="movefile">移动到</a></li>
			<li><a>复制到</a></li>
			<li><a class="rename">重命名</a></li>
			<li><a onclick="{return confirm('确定删除吗？');};" class="delete">删除</a></li>
		</ul>
	</div>
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
			<form class = "fileuploadform" action="fileupload" method="post" enctype="multipart/form-data">
			<!-- <a class="btn btn-primary" href="##"
				style="width: 100%; margin-bottom: 20px;"><span
				class="glyphicon glyphicon-open"></span> 上传</a> -->
				<div class="btn btn-primary uploadfile"
					style="position: relative; overflow: hidden;width: 100%; margin-bottom: 20px;">
					<i class="glyphicon glyphicon-open"></i> 上传 
					<input type="file" name="file" style="opacity: 0; position: absolute; top: 0; right: 0; min-width: 100%; min-height: 100%;" />
					<input type="hidden" name="pathid" value="${nowpath.id}"/>
				</div>
			</form>
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
						<a href="##"><span
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
							<a onclick="{return confirm('确定删除吗？');};" class="btn btn-sm btn-default topdelete" href="deletefile?pathid=${nowpath.id}&checkpathids=&checkfileids=" title="删除">
								<span class="iconfont icon-lajitong"></span>
							</a> 
							<a class="btn btn-sm btn-default topcreatepath" href="javascript:void(0);" title="新建文件夹">
								<span class="iconfont icon-xinzengwenjian"></span>
							</a>
						</div>
						<a class="btn btn-sm btn-default" href="" title="刷新"><span
							class="iconfont icon-shuaxin"></span></a>
					</div>
					
					
					<div class="file-box" style="overflow-y: auto;">
						<div class = "boxcontain" style="height: auto;">
						
							<!--新建文件夹操作显示部分  -->
							<div class="file-one creatpath diplaynone" style="width: 144px;">
								<div class="file-img">
									<img src="images/fileimg/Folder.png" />
								</div>
								<div class="file-name" style="text-align: left;">
									<form action="createpath">
										<input class="creatpathinput" type="text" name="pathname" value="新建文件夹"/>
										<input type="hidden" name="pathid" value="${nowpath.id}"/>
										<button class="btn btn-default">
											<em class="glyphicon glyphicon-ok" style="font-size: 12px;"></em>
										</button>
										<span class="btn btn-default">
											<em class="glyphicon glyphicon-remove cansalcreate" style="font-size: 12px;"></em>
										</span>
									</form>
								</div>
								<span class="file-check"> 
									<span class = "iconfont icon-xuanze" style="height:1.5em;width:1.5em"></span>
								</span>
							</div>
							
							
							<#list paths as path>
								<div class="file-one">
									<div class="file-img path">
										<a href="filetest?pathid=${path.id}">
											<img src="images/fileimg/Folder.png" />
										</a>
									</div>
									<div class="file-name path">
										<a href="filetest?pathid=${path.id}" style="font-size: 12px;">${path.pathName}</a>
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
										<#elseif file.fileShuffix == "txt" || file.fileShuffix == "word">
											<div class="file-img">
												<img src="images/fileimg/Text.png" />
											</div>
										<#elseif file.fileShuffix == "mp3">
											<div class="file-img">
												<img src="images/fileimg/Music.png" />
											</div>
										<#elseif file.fileShuffix == "jpg" || file.fileShuffix == "png">
											<div class="file-img">
												<img src="imgshow?fileid=${file.fileId}" style="height:71px;width:56px;"/>
											</div>
										<#else>
											<div class="file-img">
												<img src="" />
											</div>
									</#if>                                   
									<div class="file-name">
										<a>${file.fileName}</a>
									</div>
									<input type="hidden" class = "filemessage" value="${file.fileId}">
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
	
	<div class="mcmodal diplaynone">
		<li style="border:0px;">
			<div class="box-header no-padding">
				<span class="btn btn-default btn-xs des mm"> 
					<i class="glyphicon-plus"></i>
				</span>
				<div class="mcflooropen"></div>
				<h3 class="box-title" style="font-size:12px;">文件夹1</h3>
			</div>
			<ul class="nav nav-pills nav-stacked mm" style="padding-left:15px;display:none;">
				
			</ul>
		</li>
	</div>

	<!-- 移动复制模态框 -->
	<div class="modal fade in" id="thismodal" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body box no-padding" style="display: none;">
					<div class="box-header">
						<h3 class="box-title" style="font-size:15px;">复制到</h3>
					</div>
					<div class="box-body no-padding">
						<div class="box-header" style="padding:3px 0 3px 0;">
							<span class="btn btn-default btn-xs des mm"> 
								<i class="glyphicon-minus"></i>
							</span>
							<!-- <img class="mcfloorimg" src="images/fileimg/Folder.png" /> -->
							<div class="mcflooropen"></div>
							<h3 class="box-title" style="font-size:12px;">罗密欧</h3>
						</div>
						<ul class="nav nav-pills nav-stacked mm" style="padding-left:15px;">
							<#list mcpaths as path>
								<div class="box-header no-padding">
									<span class="btn btn-default btn-xs des mm"> 
										<i class="glyphicon-plus"></i>
									</span>
									<div class="mcflooropen"></div>
									<h3 class="box-title" style="font-size:12px;">${path.pathName}</h3>
								</div>
								<ul class="nav nav-pills nav-stacked mm" style="padding-left:15px;display:none;">
								</ul>
							</#list>
							<!-- <li style="border:0px;">
								<div class="box-header no-padding">
									<span class="btn btn-default btn-xs des mm"> 
										<i class="glyphicon-plus"></i>
									</span>
									<div class="mcflooropen"></div>
									<h3 class="box-title" style="font-size:12px;">文件夹1</h3>
								</div>
								<ul class="nav nav-pills nav-stacked mm" style="padding-left:15px;display:none;">
									<li>xxx</li>
								</ul>
							</li>
							<li style="border:0px;">
								<div class="box-header no-padding">
									<span class="btn btn-default btn-xs des mm"> 
										<i class="glyphicon-plus"></i>
									</span>
									<div class="mcflooropen"></div>
									<h3 class="box-title" style="font-size:12px;">文件夹1</h3>
								</div>
								<ul class="nav nav-pills nav-stacked mm" style="padding-left:15px;display:none;">
									
								</ul>
							</li>
							<li style="border:0px;">
								<div class="box-header no-padding">
									<span class="btn btn-default btn-xs des mm"> 
										<i class="glyphicon-plus"></i>
									</span>
									<div class="mcflooropen"></div>
									<h3 class="box-title" style="font-size:12px;">文件夹1</h3>
								</div>
								<ul class="nav nav-pills nav-stacked mm" style="padding-left:15px;display:none;">
									<li>yeah</li>
								</ul>
							</li> -->
						</ul>
					</div>
					<div class="box-footer" style="text-align:right;">
						<button type="button" class="btn btn-primary"
							>确定</button>
						<button type="button" class="btn btn-default"
							data-dismiss="modal">取消</button>
					</div>
				</div>
			</div>
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
			
			$(".uploadfile input").bind("change",function(){
				$(".fileuploadform").submit();
			});
			
		})
	</script>
</html>