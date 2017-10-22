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
.pathtextarea .creatpathinput{
	height:23px;
	width:78px;
	font-size: 12px;
	border: 1px solid rgba(58,140,255,.3);
	border-radius: 2px;
	padding-top: 0px;
    padding-left: 4px;
}
 .pathtextarea .creatpathinput:focus{
	outline: none; 
	border: 1px solid #0099CC;
	border-radius: 2px;
} 
.pathtextarea .btn-default{
	padding: 0px 4px 0px 4px;
	border:1px solid rgba(58,140,255,.3);
	color: #3b8cff;
}
.pathtextarea .btn-default:hover{
	background-color: #fff !important;
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
					<li class="activee filetypedocument"><a href="filemanage"> <span
							class="iconfont icon-suoyougongneng"></span> 全部文件</a></li>
					<li><a href="##" class="filetypedocument"><span class="iconfont icon-icon4"></span>
							文档</a></li>
					<li><a href="##" class="filetypeimage"><span class="iconfont icon-tupian"></span>
							图片</a></li>
					<li><a href="##" class="filetypemusic"><span class="iconfont icon-yinyue"></span>
							音乐</a></li>
					<li><a href="##" class="filetypevedio"><span
							class="iconfont icon-shipin"></span> 视频</a></li>
					<li><a href="##" class="filetypeyasuo"><span
							class="iconfont icon-yasuobao"></span> 压缩包</a></li>
					<li><a href="##" class="filetypeshare"><span class="iconfont icon-fenxiang"></span>
							共享文件</a></li>
					<li>
						<a href="##" class="filetypetrash"><span
							class="iconfont icon-lajitong"></span> 回收战</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="col-md-9">
			<!--id="container"-->
			<div class="loadfiletype">
				<#include "/file/filetypeload.ftl"/>
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
	
	<!-- 移动复制模态框 -->
	<div class="modal fade in" id="thismodal" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body box no-padding" style="display: none;">
					<div class="box-header">
						<h3 class="box-title mc-title" style="font-size:15px;"></h3>
					</div>
					<div class="box-body no-padding">
						<div class="box-header" style="padding:3px 0 3px 0;">
							<span class="btn btn-default btn-xs des mm"> 
								<i class="glyphicon-minus"></i>
							</span>
							<!-- <img class="mcfloorimg" src="images/fileimg/Folder.png" /> -->
							<div class="mcflooropen"></div>
							<h3 class="box-title" style="font-size:12px;">${userrootpath.pathName}</h3>
							<input class="mctopathid" type="hidden" value="${userrootpath.id}" />
						</div>
						<ul class="nav nav-pills nav-stacked mm" style="padding-left:15px;">
							<#list mcpaths as path>
								<div class="pathidcompare" pathId="${path.id}">
									<div class="box-header no-padding">
										<span class="btn btn-default btn-xs des mm"> 
											<i class="jiajian glyphicon-plus"></i>
										</span>
										<span class="openpath modalajax">
											<div class="mcflooropen"></div>
											<h3 class="box-title" style="font-size:12px;">${path.pathName}</h3>
											<input class="mctopathid" type="hidden" value="${path.id}" />
										</span>
									</div>
									<ul class="nav nav-pills nav-stacked mm modalajaxdata" style="padding-left:15px;display:none;">
										
									</ul>
								</div>
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
						<input class="userrootpath" type="hidden" name="userrootpath" value="${userrootpath.id}"/>
						<form action="mcto" method="get">
							<input class="mctoid" type="hidden" name="mctoid" value="${userrootpath.id}"/>
							<input class="mcfileids" type="hidden" name="mcfileids" value=""/>
							<input class="mcpathids" type="hidden" name="mcpathids" value=""/>
							<input type="hidden" name="pathid" value="${nowpath.id}"/>
							<input class="morc" type="hidden" name="morc" value=""/>
							<button type="submit" class="btn btn-primary"
								>确定</button>
							<button type="button" class="btn btn-default mcmodalcancle"
								data-dismiss="modal">取消</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<#if message??>
	<script type="text/javascript">
		alert("${message}");
	</script>
</#if>
<script src="js/common/iconfont.js"></script>
<script src="js/file/filejs.js"></script>
<script src="js/file/fileajax.js"></script>
<script type="text/javascript">
		$(function() {
			
			/*
			 * 收縮
			 */
			$("body").on("click",".des",function(){
				console.log("aaaa");
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
			
		});
		
	</script>
</html>