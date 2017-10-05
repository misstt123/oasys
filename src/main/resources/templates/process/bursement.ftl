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
	width: 66%;
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
.food{
	padding-left:10px
}
.zeng,.jian{
cursor: pointer;
}
.reciver{
	position: relative;
    float: right;
    margin-top: -28px;
    right: 5px;
    cursor: pointer;
}
.sub{
	position: relative;
    float: right;
    margin-top: -24px;
    right: 9px;
    cursor: pointer;
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">费用报销</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">费用报销</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		
		<div class="bgc-w box">
			<form action="apply" enctype="multipart/form-data" method="post"  >
			<div class="box-header">
				<table class="bo table ">
			
				<tr >
					<td colspan="14" class="title"><h2>费用报销单</h2></td>
			
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
					<td class="title" ><label class="control-label">提单人员</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu" name="proId.userId"
					readonly="readonly" style="background-color:#fff;" value="${username}"/></td>
					<td class="title" ><label class="control-label">承担主体</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu cheng" 
					readonly="readonly" style="background-color:#fff;" name="usermoney"/>
						<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus"
					>通讯录</span>
					</div>
					</td>
				</tr>
				
				<tr >
					<td class="title" ><label class="control-label">相关客户</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu" name="name"/></td>
					<td class="title" ><label class="control-label">报销方式</label></td>
					<td colspan="6">
					<select class="form-control inpu" name="typeId">
					<#list uplist as list>
					<option value="${list.typeId}">${list.typeName}</option>
					</#list>
					</select>
					</td>
				</tr>
				<tr >
				<td class="title" ><label class="control-label">审核人员</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu shen"
					 readonly="readonly" style="background-color:#fff;" name="username"/>
					<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus">通讯录</span>
					</div>
					</td>
					<td class="title" ><label class="control-label">相关票据</label></td>
					<td  colspan="6">
						<div class="btn btn-default"style="position: relative; overflow: hidden;width: 100%;margin-top: -6px;">
							<i class="glyphicon glyphicon-open"></i> 上传票据
							<input type="file" name="filePath" style="opacity: 0; position: absolute;
								 top: 0; right: 0; " class='inpu'>
						</div>
					</td>
				</tr>
				<tr >
					
					
				</tr>
				<tr >
					<td class="title"><label class="control-label">报销明细</label></td>
					<td colspan="13" style="text-align: right;" ><i class="glyphicon glyphicon-plus zeng"></i>&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-minus jian"></i></td>
					
				</tr>
				
				<tr >
					<td colspan="14" >
					<div class="food">
						<table class="table inside">
							<thead>
								<tr>
									 <th colspan="2" style="width: 77px;">选择</th>
									 <th colspan="2">费用日期</th>
									 <th colspan="2">费用科目</th>
									 <th colspan="2">费用说明</th>
									 <th colspan="2">票据张数</th>
									 <th colspan="2">报销金额</th>
								</tr>
							</thead>
							<tbody class="tbody">
							<tr class="tr">
									<td class="chebox" colspan="2"><span class="labels"><label><input type="checkbox" name="items" class="val" ><i>✓</i></label></span></td>
									<td colspan="2"><input type="text" class="form-control inpu shijian" name="details[0].produceTime" /></td>
									<td colspan="2">
										<input type="text" class="form-control inpu" name="details[0].subject"/>
										<div class="sub">
											<i class="glyphicon glyphicon-search"></i>
										</div>
									</td>
									<td colspan="2"><input type="text" class="form-control inpu" name="details[0].descript"/></td>
									<td colspan="2"><input type="text" class="form-control inpu" name="details[0].invoices"/></td>
									<td colspan="2" class="tdrig"><input type="text" class="form-control inpu"	name="details[0].detailmoney"/></td>
									
								</tr>
								
							</tbody>
						</table>
					</div>
					</td>
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
			
			
			</form>
			
		</div>
	</div>
</div>
<input type="text" class="recive_list" style="display:none;">
<input type="text" class="ject" style="display:none;">
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
		
		$(".tbody").on("click",".sub",function(){
			$('#subject').modal("toggle");
			$(this).siblings("input").val("");
			$('.sub').removeClass("je");
			$(this).addClass("je");
		});
		$(".ject").change(function(){
			var	$val=$(this).val();
			$(".je").siblings("input").val($val);
			console.log("jinlai");
		
		});
		var i=1;
		//增加一行
		$(".zeng").click(function(){
			var date=new Date();
			var nowDate=date.Format('yyyy-MM-dd hh:mm:ss');
			var star=addDate(nowDate,0);
			var td1 = $('<td class="chebox" colspan="2"></td>').append($('<span class="labels"></span>').append($('<label></label>').append($('<input type="checkbox" name="items"  class="val" >')).append($('<i></i>').text('✓'))));
			var td2 = $('<td  colspan="2"></td>').append($('<input type="text" class="form-control inpu incar" name="details['+i+'].produceTime"/>').val(star));
			var td3 = $('<td colspan="2"></td>').append($('<input type="text" class="form-control inpu" name="details['+i+'].subject"/>'))
												 .append($('<div class="sub"></div>').append($('<i class="glyphicon glyphicon-search"></i>')));
			var td4 = $('<td colspan="2"></td>').append($('<input type="text" class="form-control inpu" name="details['+i+'].descript"/>'));
			var td5 = $('<td colspan="2"></td>').append($('<input type="text" class="form-control inpu" name="details['+i+'].invoices"/>'));
			var td6 = $('<td colspan="2" class="tdrig"></td>').append($('<input type="text" class="form-control inpu" name="details['+i+'].detailmoney"/>'));
			var tr = $('<tr class="tr"></tr>').append(td1).append(td2).append(td3).append(td4).append(td5).append(td6);
			$('.tbody').append(tr);
			i=i+1;
		});
		
		
	
		//把tr置空
		$(".jian").click(function(){
			
			 $("[name=items]:checkbox").each(function(){
				 if(this.checked){
	    			//获取被选中了的行
	    			var $tr=$(this).parents(".tr");
					$tr.html("");
	    					
	    			}
			 })
		});
		
		
		
	});
	
	
</script>
<#include "/common/reciver.ftl">
<#include "/process/subject.ftl">
<script type="text/javascript" src="js/common/data.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>