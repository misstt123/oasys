
<script charset="utf-8" src="plugins/kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="plugins/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript" src="js/mail/mail.js" ></script>
<link rel="stylesheet" href="plugins/kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="css/common/tanchuang.css" />

<div class="bgc-w box box-primary" style="min-height: 613px;">
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
	<div class="box-body">

		<div id="MoreDiv">
			<div class="form-group">
				<select name="ctl00$cphMain$ddlType" id="ctl00_cphMain_ddlType"
					class="form-control select2">
					<#list typelist as type>
					<option value="${type.typeId}">${type.typeName}</option>
					</#list>
				</select>
			</div>
			<div class="form-group">
				<select name="ctl00$cphMain$ddlStatus" id="ctl00_cphMain_ddlStatus"
					class="form-control select2">
					<#list statuslist as status>
					<option value="${status.statusId}">${status.statusName}</option>
					</#list>
				</select>
			</div>
			<div class="form-group">
				<select name="ctl00$cphMain$ddlAccount"
					id="ctl00_cphMain_ddlAccount" class="form-control select2">
					<option value="0">内部邮件</option>
					<#list mailnum as num>
					<option value="${num.mailNumberId}">${num.mailUserName}</option>
					</#list>
				</select>
			</div>
		</div>

		<div class="form-group">
			<input name="ctl00$cphMain$txtReceiver" type="text"
				id="ctl00_cphMain_txtReceiver" style="background-color: #fff;"
				class="form-control" readonly="readonly" placeholder="收件人：" />
			<div class="reciver">
				<span class="label label-success glyphicon glyphicon-plus"
					data-toggle="modal" data-target="#myModal">通讯录</span>
			</div>
		</div>

		<div class="form-group">
			<input name="ctl00$cphMain$txtSubject" type="text"
				id="ctl00_cphMain_txtSubject" class="form-control" placeholder="主题：" />
		</div>

		<div class="form-group">
			<form id="ss">
				<textarea name="content"
					style="width: 100%; height: 300px; visibility: hidden; font-size: 20px;"></textarea>
			</form>
		</div>

		<div class="form-group">
			<div class="btn btn-default ">
				<span class="glyphicon glyphicon-paperclip">增加附件</span> <input
					type="file" name="ctl00$cphMain$fuAttachment"
					id="ctl00_cphMain_fuAttachment" />
			</div>
			<p class="help-block">5MB以内</p>
		</div>

	</div>
	<!--盒子尾-->
	<div class="box-footer foots">
		<div class="left1">
			<a id="ctl00_cphMain_lnbDiscard" class="btn btn-default"><i
				class="glyphicon glyphicon-remove" href="javascript:history.back();">放弃</i></a>
		</div>
		<div class="pull-right right1 ">
			<a id="ctl00_cphMain_lnbDraft" class="btn btn-default"><i
				class="glyphicon glyphicon-pencil">存草稿</i></a> <a
				id="ctl00_cphMain_lnbSend" class="btn btn-primary"><i
				class="glyphicon glyphicon-envelope">发送</i></a>
		</div>
	</div>
</div>


<#include "/common/reciver.ftl">