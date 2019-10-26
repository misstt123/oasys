<!DOCTYPE html>
<html>
<head>
<#include "/common/commoncss.ftl">

<link rel="stylesheet" href="plugins/kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="css/tc.css" />
<link rel="stylesheet" type="text/css" href="css/common/tanchuang.css" />
<script charset="utf-8" src="plugins/kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="plugins/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript" src="js/note/noteedit.js"></script>
<title></title>
<style>
.panel-heading {
	background-color: #eee;
}

.outside {
	border: 0px solid red;
	margin-top: 20px;
}

.container {
	border-radius: 5px;
	border: 0px solid black;
	border-top: 3px solid #3c8dbc;
	/*margin-left: 0px;*/
	background-color: #FFFFFF;
	padding-top: 12px;
}

.label-back {
	background-color: #6C7B8B;;
	color: white;
}

.label-back:hover {
	color: white !important;
}

.label {
	display: inline;
	padding: 5px 12px 5px 12px;
	font-size: 75%;
	font-weight: 700;
	line-height: 1;
	color: #fff;
	text-align: center;
	white-space: nowrap;
	vertical-align: baseline;
	border-radius: .25em;
}

.la {
	margin-top: 4px;
	font-size: 16px;
}

.page-header {
	margin: 0px;
}

.reciver {
	position: relative;
	top: -27px;
	float: right;
	right: 4px;
	cursor: pointer;
}

form {
	margin: 0;
}

textarea {
	display: block;
	font-size: 16px;
}

#ss .ke-container {
	border-radius: 5px;
	width: 770px;
}

.form-group .btn {
	background-color: #eee;
	width: 100px;
	height: 34px;
}

#MoreDiv {
	display: none;
	top: 5px;
}

#ctl00_cphMain_fuAttachment {
	opacity: 0;
	position: relative;
	top: -22px;
}

.left1, .right1 {
	display: inline-block;
}

.right1 .btn-default, .left1 .btn-default {
	background-color: #eee;
}

.bottom1 {
	margin-bottom: 20px;
}

.reciver a {
	text-decoration: none;
}
</style>


</head>

<body class="panel-heading ">
	<div>
		<div class="container box">
			<div class="box-header">
				<a class="label label-back " onclick="notejump('notewrite','-2')">
					<span class="glyphicon glyphicon-chevron-left"></span>返回
				</a>
			</div>
			
			<div class="alert alert-danger alert-dismissable" role="alert"
							style="display: none;">
							错误信息:<button class="close" type="button">&times;</button>
							<span class="error-mess"></span>
				</div>
				
			<div class="page-header">
			</div>
			
			<form action="notesave" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<select name="catalogname" id="ctl00_cphMain_ddlFile"
					class="form-control select2">
					<#list calist as ca>
					<option id="catalog" ${(cata?? && cata.catalogId==ca.catalogId)?string('selected', '')}
					>
					✟${ca.catalogName}
					</option>
					</#list>
				</select>
			</div>
			<div class="form-group">
				<select name="type" id="ctl00_cphMain_ddlType"
					class="form-control select2">
					<#list typelist as t>
						<option ${(note??&&note.typeId??&&note.typeId==t.typeId)?string('selected','')}>${t.typeName}</option>
					</#list>
				</select>
			</div>

			<div class="form-group">
			   
			   <div id="MoreDiv" >
					<input name="receiver" type="text" data-title="用户"
						id="recive_list" class="form-control" readonly="readonly"
						placeholder="分享给：" value="<#if note??><#if note.receiver??>${note.receiver}</#if></#if>"/>
					<div class="reciver" >
						<a data-toggle="modal" data-target="#myModal"
							data-backdrop="static"> <span
							class="label label-success glyphicon glyphicon-share-alt">分享</span>
						</a>
					</div>
				</div>
			</div>
			<div class="form-group">
				<select name="status"
					id="ctl00_cphMain_ddlImportance" class="form-control select2">
					  <#list statuslist as s>
						<option ${(note??&&note.statusId??&&note.statusId==s.statusId)?string('selected','')} >${s.statusName}</option>
					  </#list>
				</select>
			</div>
			<div class="form-group">
				<input name="title" type="text"
					id="ctl00_cphMain_txtSubject" class="form-control" 
					placeholder="标题：" 
					value="<#if note??>${note.title}</#if>"
					>
					<!-- <div class="warn alert alert-danger alert-dismissable" role="alert" style="margin-top:10px;  line-height:10px;  height:10px; color:red;display:none;border:1px solid red;">*这是必填项不能为空</div> -->
			</div>
			
			<div class="form-group">	
			<textarea name="content" class="form-control" data-title="笔记内容" style="width:100%;height:300px;visibility:hidden;font-size: 20px;">
			<#if note??&&note.content??>
			${note.content}
			</#if>
			</textarea>
			</div>

			<div class="form-group">
				<div class="btn btn-default ">
					<span class="glyphicon glyphicon-paperclip">增加附件</span> <input
						type="file" name="file"
						id="ctl00_cphMain_fuAttachment" />
				</div>
				<p class="help-block">5MB以内</p></div>
             
            <input type="hidden" name="id" value="<#if id??>${id}</#if>">

			<div class="pull-right right1 bottom1">
				<button id="ctl00_cphMain_lnbSend"   class="btn btn-primary"  onclick="{return check();}">保存</button> 
				<a  onclick="notejump('notewrite','-2')"
					id="ctl00_cphMain_lnbcancel" class="btn btn-default">取消</a>
			</div>
</form>


	
	
	
	
	
	</div>
	</div>
	
	<#include "/common/modalTip.ftl"> 
	
	<script type="text/javascript">
	//防止ajax和文本框发生冲突的js
	      	var event = document.createEvent('HTMLEvents');   
			event.initEvent("load", true, true);     
			window.dispatchEvent(event);    
			
			
			$('.successToUrl').on('click',function(){
				window.location.href='/noteview';
			});
			
			function check(){
				console.log("开始进入了");
				var text=$('.ke-edit-iframe').contents().find('body').text();
				//提示框可能在提交之前是block状态，所以在这之前要设置成none
				$('.alert-danger').css('display', 'none');
					// 如果在这些input框中，判断是否能够为空
					if ($('#ctl00_cphMain_txtSubject').val() == "") {
						var errorMess = "[标题输入框信息不能为空]";
						// 对齐设置错误信息提醒；红色边框
						$(this).parent().addClass("has-error has-feedback");
						$('.alert-danger').css('display', 'block');
						// 提示框的错误信息显示
						$('.error-mess').text(errorMess);
						// 模态框的错误信息显示
						$('.modal-error-mess').text(errorMess);
						return false;
					} 
					if(text.length<10){
						// 获取到input框的兄弟的文本信息，并对应提醒；
						var brother = $(this).attr("data-title");
						var errorMess = "[笔记内容输入框信息不能少于10个字]";
						// 对齐设置错误信息提醒；红色边框
						$(this).parent().addClass("has-error has-feedback");
						$('.alert-danger').css('display', 'block');
						// 提示框的错误信息显示
						$('.error-mess').text(errorMess);
						// 模态框的错误信息显示
						$('.modal-error-mess').text(errorMess);
						return false;
					}
					else{
						return true;
					}
					}
			
	</script>
</body>
</html>
<#include "/common/notereciver.ftl">