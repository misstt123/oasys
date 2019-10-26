<#include "/common/commoncss.ftl" />
<script charset="utf-8" src="plugins/kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="plugins/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript" src="js/mail/mail.js" ></script>
<link rel="stylesheet" href="plugins/kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="css/mail/mail.css" />
<style>
.box{
	width: 98%;
	margin: 10px auto;
}
.ke-container{
border-radius: 5px;
}
.file{
	opacity: 0;
    width: 100px;
    height: 34px;
    margin-left: -13px;
    margin-top: -20px;
}
.deletethis:hover,.add:hover,.file:hover{
	cursor:pointer;
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
		<h3 class="box-title">
			<a href="javascript:history.back();" class="label label-default"
				style="padding: 5px;"> <i
				class="glyphicon glyphicon-chevron-left"></i> <span>返回</span>
			</a>
		</h3>
	</div>
	<div class="alert alert-danger alert-dismissable" style="display: none;" role="alert">
		错误信息:
		<button class="thisclose close" type="button">&times;</button>
		<span class="error-mess"></span>
	</div>
	<!--盒子身体-->
	<form action="adddiscuss" method="post" enctype="multipart/form-data" onsubmit="return check();">
	<div class="box-body">
		<!--错误信息提示  -->
			<div class="form-group">
				<#if discuss??>
					<select name="typeId" id="selecttype" class="select2 form-control" disabled="disabled">
					<option value="${(discuss.typeId)!''}">${(typeName)!''}</option>
				<#else>
					<select name="typeId" id="selecttype" class="select2 form-control">
				</#if>
				<#list typeList as type>
						<#if type.typeId==19>
							<#if user.superman==true>
							<option value="${type.typeId}">${type.typeName}</option>
							</#if>
						<#else>
							<option value="${type.typeId}">${type.typeName}</option>
						</#if>
				</#list>
				</select>
			</div>
			<div class="form-group addvote" style="display:none;">
				<label class="control-label">开始日期</label> 
				<#if voteList??>
					<input id="starTime" value="${(voteList.startTime)!''}" 	name="startTime" class="form-control" disabled="disabled"/>
					<#else>
					<input id="starTime" value="${(voteList.startTime)!''}" 	name="startTime" class="form-control" />
				</#if>
			</div>
			<div class="form-group addvote" style="display:none;">
				<label class="control-label">截止日期</label> <input id="endTime" value="${(voteList.endTime)!''}"
					name="endTime" class="form-control" />
			</div>
			<div class="form-group addvote" style="display:none;">
				<#if voteList??>
					<select name="selectone" class="form-control" style="margin-bottom: 15px;" disabled="disabled">
						<option value="${(voteList.selectone)!''}">
							<#if voteList.selectone==1>
								单选
							<#else>
								多选
							</#if>
						</option>
				<#else>
					<select name="selectone" class="form-control" style="margin-bottom: 15px;">
				</#if>
				<option value="1">单选</option>
				<option value="2">多选</option>
			</select>
			<#if voteList??>
				<input name="inReceiver" type="text" id="inputtext" style="background-color: #fff;" class="form-control"  placeholder="投票标题" disabled="disabled"/>
			<#else>
				<input name="inReceiver" type="text" id="inputtext" style="background-color: #fff;" class="form-control"  placeholder="投票标题" />
			</#if>
			<div class="reciver pull-right add" style="display: inline-block;margin-top: 2px;margin-right: 33px;">
				<span class="label label-success glyphicon glyphicon-plus"
					data-toggle="modal" data-target="#myModal">增加投票</span>
			</div>
		</div>
		<div style="background:#eee; overflow:auto">
			<div id="addtable">
			<#if voteList??>
			<table class="table" cellspacing="0" border="0" style="border-width:0px;border-collapse:collapse;">
				<tbody>
					<tr>
						<th scope="col">投票标题</th>
						<th scope="col">显示</th>
						<th scope="col">操作</th>
					</tr>
				<#list voteTitles as title>
					<tr>
						<td>
							<input type="text" name="votetitle" value="${title.title}" class="form-control textvalue" disabled="disabled">
						</td>
						<td  style="width:150px;">
							<input type="text" name="votecolor" value="${title.color}" class="form-control" disabled="disabled">
						</td>
						<td style="width:150px;">
							<a class="deletethis" title="删除" read="hasvote"><span class="label label-danger">删除</span></a>
						</td>
					</tr>
				</#list>
				</tbody>
			</table>
			</#if>
			</div>
		</div>
		<div class="form-group" style="margin-top:10px;">
			<input name="title" type="text"	class="form-control title" placeholder="标题：" value="${(discuss.title)!''}"/>
		</div>
		<div class="form-group">
			<textarea name="content" placeholder="在此处填写内容...." class="form-control tent" style="width: 100%; height: 360px; visibility: hidden; font-size: 20px;">${(discuss.content)!''}</textarea>
		</div>
		<!-- <div class="form-group">
			<div class="btn btn-default ">
				<span class="glyphicon glyphicon-paperclip">增加附件</span> 
				<input type="file" name="file" class="file">
			</div>
			<p class="help-block">5MB以内</p>
		</div> -->

	</div>
	<!--盒子尾-->
	<div class="box-footer foots">
		<div class="left1">
		<input type="submit" class="btn btn-primary " value="发送">
		<a class="btn btn-default" onclick="javascript:window.history.back();"><span>取消</span></a>
		</div>
	</div>	
	</form>
</div>

<#include "/common/modalTip.ftl">
<!-- 判断加入是否从修改投票进来的 -->
<#if voteList??>
	<script type="text/javascript">
		$('.addvote').css('display','block');
		$('.deletethis').children('.label').text("不能编辑");
		$('.deletethis').children('.label').css('background-color','#999');
		$(".deletethis").removeClass("deletethis");
	</script>
</#if>
<script type="text/javascript">
/* 应该是用来测试的，打印出iframe中文本编辑器的处理 */
$('.givein').on('click',function(){
	console.log("tent:"+$('.tent').val());
	console.log("iframe:"+$('.ke-edit-iframe').contents().find('body').text());
});
$('.successToUrl').on('click',function(){
	window.location.href='/chatmanage';
});
function mess(errorMess){
	$('.alert-danger').css('display', 'block');
	$('.error-mess').text(errorMess);
	$('.modal-error-mess').text(errorMess);
	modalShow(0);
	isRight = 0;
	console.log("fsdhfakfks");
}
//表单提交前执行的onsubmit()方法；返回false时，执行相应的提示信息；返回true就提交表单到后台校验与执行
function check() {
	console.log("开始进入了");
	//提示框可能在提交之前是block状态，所以在这之前要设置成none
	$('.alert-danger').css('display', 'none');
	var isRight = 1;
	var textarea=$('.ke-edit-iframe').contents().find('body').text();
	if($('.title').val()==''){
		var errorMess = "[标题信息不能为空]";
		mess(errorMess);
		return false;
	}
	//对textarea进行判空
	if(textarea.length<20){
		var errorMess = "[输入内容不能少于20字]";
		mess(errorMess);
		return false;
	}
		/* modalShow(1); */
		return true; 
}
</script>

<script type="text/javascript">
	$(function() {
		/* 生成随机颜色 */
		function randomHexColor() {	//随机生成十六进制颜色
			return '#' + ('00000' + (Math.random() * 0x1000000 << 0).toString(16)).substr(-6);
		}
		var i=1;
		/*检测select中的值变化，假如是选的投票，则把相关的显示出来  */
		$('#selecttype').on('change',function(){
			var key=$('#selecttype').val();
			console.log('dfa');
			if(key=='21'){
				$('.addvote').css('display','block');
			}else{
				$('.addvote').css('display','none');
				$('table').remove();
			}
		});
		
		/* 前台动态添加增加投票框 */
		function addTr() {
			var td1 = $('<td></td>').append($('<input type="text" name="votetitle" value="发生的" class="form-control textvalue">').val($('#inputtext').val()));
			var td2 = $('<td  style="width:150px;"></td>').append($('<input type="text" name="votecolor" value="#5bc0de" class="form-control">').val(randomHexColor()));
			var td3 = $('<td  style="width:150px;"></td>').append($('<a class="deletethis" title="删除"></a>').append($('<span class="label label-danger"></span>').text('删除')));
			var tr = $('<tr></tr>').append(td1).append(td2).append(td3);
			$('#addtable table tbody').append(tr);
			$('#inputtext').val('');
			console.log(i);
			i=i+1;
		}
		/* 点击增加投票时的判断，*/
		$('.add').on('click',function() {
			if ($('#inputtext').val() == '') {
				alert("投票标题不能为空");
				return false;
			}
			if ($('#addtable').children('table').length == 0) {
				var table = $('<table class="table" cellspacing="0" border="0" style="border-width:0px;border-collapse:collapse;"></table>');
				var tbody = $('<tbody></tbody>');
				var th = $('<tr></tr>').append($('<th scope="col"></th>').text('投票标题')).append($('<th scope="col"></th>').text('显示')).append($('<th scope="col"></th>')	.text('操作'));
				$('#addtable').append(table.append(tbody.append(th)));
				addTr();
			} else {
				addTr();
			}
		});
		/* 投票的删除 */
		$('#addtable').on('click', '.deletethis', function(e) {
			e.preventDefault();
			if (!confirm("删除该记录将不能恢复，确定删除吗？")) {
				return false
			}
			console.log($('tbody').children('tr').length);
			if ($('tbody').children('tr').length == 2) {
				alert("最后一条不能再删除了")
				return false;
			}
			$(this).parent().parent().remove();

		});
	});
</script>
<script type="text/javascript" src="js/common/data.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>