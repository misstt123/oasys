<#include "/common/commoncss.ftl">
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
		<h3 class="box-title">Writing</h3>
	</div>
	<div class="alert alert-danger alert-dismissable" style="display: none;" role="alert">
		错误信息:
		<button class="thisclose close" type="button">&times;</button>
		<span class="error-mess"></span>
	</div>
	<!--盒子身体-->
	<form action="adddiscuss" method="post" enctype="multipart/form-data" onsubmit="return check();">
	<div class="box-body">
		<!--錯誤信息提示  -->
			<div class="form-group">
				<select name="typeId" id="selecttype" class="select2 form-control">
					<option value="19">讨论</option>
					<option value="20">公告</option>
					<option value="21">投票</option>
				</select>
			</div>
		<div class="form-group addvote" style="display:none;">
			<input name="inReceiver" type="text"
				id="inputtext" style="background-color: #fff;"
				class="form-control"  placeholder="投票标题" />
			<div class="reciver pull-right add" style="display: inline-block;margin-top: 2px;margin-right: 33px;">
				<span class="label label-success glyphicon glyphicon-plus"
					data-toggle="modal" data-target="#myModal">增加投票</span>
			</div>
		</div>
		<div style="background:#eee; overflow:auto">
			<div id="addtable">
			</div>
		</div>
		<div class="form-group" style="margin-top:10px;">
			<input name="title" type="text"	class="form-control title" placeholder="标题：" />
		</div>
		<div class="form-group">
			<textarea name="content" placeholder="在此处填写内容...." class="form-control tent" style="width: 100%; height: 360px; visibility: hidden; font-size: 20px;"></textarea>
		</div>
		<div class="form-group">
			<div class="btn btn-default ">
				<span class="glyphicon glyphicon-paperclip">增加附件</span> 
				<input type="file" name="file" class="file">
			</div>
			<p class="help-block">5MB以内</p>
		</div>

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
<script type="text/javascript">
$('.givein').on('click',function(){
	console.log("tent:"+$('.tent').val());
	console.log("iframe:"+$('.ke-edit-iframe').contents().find('body').text());
	
});
$('.successToUrl').on('click',function(){
	window.location.href='/testsysmenu';
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
		$('#selecttype').on('change',function(){
			var key=$('#selecttype').val();
			if(key=='3'){
				$('.addvote').css('display','block');
			}else{
				$('.addvote').css('display','none');
				$('table').remove();
			}
		});
		
		function addTr() {
			var td1 = $('<td></td>').append($('<input type="text" name="votename"  class="form-control">').val($('#inputtext').val()));
			var td2 = $('<td  style="width:150px;"></td>').append($('<input type="text" value="#5bc0de" class="form-control">'));
			var td3 = $('<td  style="width:150px;"></td>').append($('<a class="deletethis" title="删除"></a>').append($('<span class="label label-danger"></span>').text('删除')));
			var tr = $('<tr></tr>').append(td1).append(td2).append(td3);
			$('#addtable table tbody').append(tr);
			$('#inputtext').val('');
		}
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