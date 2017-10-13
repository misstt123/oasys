<#include "/common/commoncss.ftl">
<link rel="stylesheet" href="css/common/tanchuang.css" />
<style>
.box-header{
  text-align: center;
  border-bottom: 0px solid #f4f4f4;
}
.title{
	text-align: center;
}

.inpu{
 margin-top: -6px;

}

.control-label{
	display:inline-block;
	font-weight: 400;
}
.bo{
	margin: 0px auto;
	width: 80%;
}


.table th,.chebox,.table>tbody>tr>td{
font-weight: 400;
 text-align: center;
}
.inside{
width: 100%;
}
.inside thead{
background-color: rgba(76, 175, 95, 0.06);
}
.inside>tbody>tr>td{
 border-top: 0px solid #ddd;
}
.inside>tbody>tr>td{
border-bottom: 1px solid #ddd;
border-left: 1px solid #ddd;
}
.tdrig{
border-right: 1px solid #ddd;
}
.bo>tbody>tr>td,.inside>thead>tr>th {
    border-top: 0px solid #ddd;
    border-bottom: 0px solid #ddd;
    border-left: 0px solid #ddd;
}
.text {
	min-height: 100px;
}
.shuoming{
min-height: 120px;
}
.reciver{
	position: relative;
    float: right;
    margin-top: -28px;
    right: 5px;
    cursor: pointer;
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">离职申请</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">离职申请</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		
		<div class="bgc-w box">
			
			<div class="box-header">
				<table class="bo table ">
			
				<tr >
					<td colspan="14" class="title"><h2>离职申请单</h2></td>
			
				</tr>
				<tr style="opacity: 0;">
					<td colspan="14">11</td>
				</tr>
					
				<tr >
					<td class="title"><label class="control-label">标题</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu" name="proId.processName"/></td>
					
					<td class="title"><span >紧急程度</span></td>
					<td colspan="6">
						<select class="form-control inpu" name="proId.deeply">
							<#list harrylist as harry>
							<option value="${harry.typeId}">${harry.typeName}</option>
							</#list>
						</select>
					</td>
					
				</tr>
				<tr >
					<td class="title" ><label class="control-label">申请人</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu"
					readonly="readonly" style="background-color:#fff;" value="${username}"/></td>
					<td class="title" ><label class="control-label">交接人员</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu cheng" 
					readonly="readonly" style="background-color:#fff;" name="handuser"/>
						<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus">通讯录</span>
					</div>
					</td>
				</tr>
				
			
				
				<tr >
					<td class="title" ><label class="control-label">未完成事宜</label></td>
					<td  colspan="6"><textarea class="form-control text" name="nofinish"></textarea></td>
					<td class="title" ><label class="control-label">离职原因</label></td>
					<td  colspan="6"><textarea class="form-control text" name="proId.processDescribe"></textarea></td>
				</tr>
				
					<tr >
					<td class="title" ><label class="control-label">审核人员</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu cheng" 
						readonly="readonly" style="background-color:#fff;" name="nameuser"/>
							<div class="reciver">
							<span class="label label-success glyphicon glyphicon-plus">通讯录</span>
						</div>
					</td>
					<td class="title" ><label class="control-label">是否有费用报销未完成</label></td>
					<td  colspan="6" style="text-align:left;"><span class="labels"><label><input type="checkbox" name="finish" class="val" ><i>✓</i></label></span></td>
					
				</tr>
					
				
				<tr >

					<td colspan="14" style="text-align: right;" >
						<input class="btn btn-primary" id="save" type="submit" value="保存" />
						<input class="btn btn-default" id="cancel" type="submit" value="取消"
						onclick="window.history.back();" />
					</td>
					
				</tr>
				</table>
			</div>
			
		</div>
	</div>
</div>
<input type="text" class="recive_list" style="display:none;">
<script>
$(function(){
	$('.reciver').on('click',function(){
		$('#myModal').modal("toggle");
		$(this).siblings("input").val("");
		$('.reciver').removeClass("qu");
		$(this).addClass("qu");
	});
	$(".recive_list").change(function(){
		var	$val=$(this).val();
		$(".qu").siblings("input").val($val);
	
	});
});
</script>
<#include "/common/reciver.ftl">
<script type="text/javascript" src="js/common/data.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>