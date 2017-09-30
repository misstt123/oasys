<#include "/common/commoncss.ftl">
<script charset="utf-8" src="plugins/kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="plugins/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript" src="js/mail/mail.js" ></script>
<link rel="stylesheet" href="plugins/kindeditor/themes/default/default.css" />
<style>
.box{
	width: 98%;
	margin: 10px auto;
}
.ke-container{
border-radius: 5px;
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">讨论区编辑</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">讨论区编辑</a>
	</div>
</div>
<div class="bgc-w box box-primary" style="min-height: 613px;margin-top:20px;">
	<!--盒子头-->
	<div class="box-header">
		<h3 class="box-title">写信</h3>
		<div class="box-tools">
			<div class="pull-right top">
				<button type="button" class="btn btn-md btn-primary">
					<span class="glyphicon glyphicon-chevron-down ">展开更多</span>
				</button>
			</div>
		</div>
	</div>
	<!--盒子身体-->
	<form action="pushmail" method="post" enctype="multipart/form-data" onsubmit="return check();" >
	<div class="box-body">
		<!--錯誤信息提示  -->
					<div class="alert alert-danger alert-dismissable" style="display:none;" role="alert">
						错误信息:<button class="thisclose close" type="button">&times;</button>
						<span class="error-mess"></span>
					</div>
		<div id="MoreDiv">
			<div class="form-group">
				<select name="mailType" id="ctl00_cphMain_ddlType"
					class="select2 form-control">
					<option value="fds">fdsa</option>
					<option value="fds">fdsfa</option>
				</select>
			</div>
			<div class="form-group">
				<select name="mailStatusid" id="ctl00_cphMain_ddlStatus"
					class="select2 form-control">
					<option value="fsda">status.statusName}</option>
				</select>
			</div>
			<div class="form-group">
				<select name="inmail" id="account" class="select2 form-control">
					<option value="0">内部邮件</option>
					<option value="fsdf">num.mailUserName}</option>
				</select>
			</div>
		</div>

		<div class="form-group">
			<input name="inReceiver" type="text"
				id="recive_list" style="background-color: #fff;"
				class="form-control" readonly="readonly" placeholder="收件人：" />
			<div class="reciver">
				<span class="label label-success glyphicon glyphicon-plus"
					data-toggle="modal" data-target="#myModal">通讯录</span>
			</div>
		</div>

		<div class="form-group">
			<input name="mailTitle" type="text"
				id="ctl00_cphMain_txtSubject" class="form-control" placeholder="主题：" />
		</div>

		<div class="form-group">
			<textarea name="content" class="form-control tent" style="width: 100%; height: 360px; visibility: hidden; font-size: 20px;"></textarea>
		</div>

		<div class="form-group">
			<div class="btn btn-default ">
				<span class="glyphicon glyphicon-paperclip">增加附件</span> <input
					type="file" name="file"
					id="ctl00_cphMain_fuAttachment" />
			</div>
			<p class="help-block">5MB以内</p>
		</div>

	</div>
	<!--盒子尾-->
	<div class="box-footer foots">
		<div class="left1">
		<input type="submit" class="btn btn-primary " value="发送">
			<a id="ctl00_cphMain_lnbDiscard" class="btn btn-default" href="mail"><span>放弃</span></a>
		</div>
	</div>	
	</form>
</div>