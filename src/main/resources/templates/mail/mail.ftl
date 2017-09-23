
<#include "/common/commoncss.ftl"> 
<script type="text/javascript" src="js/common/iconfont.js"></script> 
<script type="text/javascript" src="js/mail/mail.js"></script>
<link rel="stylesheet" href="css/common/iconfont.css" />
<link rel="stylesheet" href="css/common/checkbox.css" />
<link rel="stylesheet" href="css/mail/mail.css" />
<script>
	function changepath(path){
		$('iframe').attr('src',path);
	}
	
</script>


<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">邮件管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">邮件管理</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-3">
		<a class="btn btn-primary write" href="javascript:changepath('wmail');"
			style="width: 100%; margin-bottom: 20px;"> <span
			class="glyphicon glyphicon-pencil"></span> 写信
		</a>
		<div class="bgc-w box box-solid">
			<div class="box-header">
				<h3 class="box-title">文件夹</h3>
				<span class="btn btn-xs btn-default pull-right des mm"> <i
					class="glyphicon glyphicon-minus"></i>
				</span>
			</div>
			<ul class="nav nav-pills nav-stacked files ">
				<li style="border-left: 3px solid blue;" onclick="javascript:changepath('amail');"><span
					class="glyphicon glyphicon-inbox le"> 收件箱</span> <span
					class="pull-right uncheck"><i class="btn btn-xs btn-primary">1</i></span>
				</li>
				<li><span class="glyphicon glyphicon-envelope le"> 发件箱</span> <span
					class="pull-right uncheck"><i class="btn btn-xs btn-primary">1</i></span>
				</li>
				<li><span class="glyphicon glyphicon-list-alt le"> 草稿箱</span></li>
				<li><span class="glyphicon glyphicon-filter le"> 垃圾箱</span></li>
				<li><span class="glyphicon glyphicon-trash le"> 回收站</span></li>
			</ul>
		</div>

		<div class="bgc-w box box-solid">
			<div class="box-header">
				<h3 class="box-title">类型</h3>
				<span class="btn btn-xs btn-default pull-right des"> <i
					class="glyphicon glyphicon-minus"></i>
				</span>
			</div>
			<ul class="nav nav-pills nav-stacked fff">
				<li><svg class="icon le" aria-hidden="true">
								<use xlink:href="#icon-kongxinquan"></use>
							</svg>&nbsp;&nbsp;&nbsp;邮件</li>
				<li><svg class="icon le" aria-hidden="true">
								<use xlink:href="#icon-kongxinquan"></use>
							</svg>&nbsp;&nbsp;&nbsp;通知</li>
				<li><svg class="icon le" aria-hidden="true" style="color: red;">
								<use xlink:href="#icon-kongxinquan"></use>
							</svg>&nbsp;&nbsp;&nbsp;公告</li>
			</ul>
		</div>
	</div>
	<div class="col-md-9 set ">
		<iframe src="three" frameBorder="0" width="100%" height="790px"></iframe>
	</div>
</div>

