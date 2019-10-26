<#include "/common/commoncss.ftl">
<link rel="stylesheet" href="css/common/tanchuang.css" />
<style>
.modal-open {
    overflow: auto;
}
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
.food{
	padding-left:15px
}
.reciver{
	position: relative;
    float: right;
    margin-top: -28px;
    right: 5px;
    cursor: pointer;
}
.titleleft{
 text-align: left;
}
.trazeng,.trajian,.stayzeng,.stayjian{
cursor: pointer;
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">出差费用申请</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">出差费用申请</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		
			<form action="moneyeve" enctype="multipart/form-data" method="post" onsubmit="return check();" >
		<div class="bgc-w box">
			
			<div class="box-header">
				<table class="bo table ">
			
				<tr >
					<td colspan="14" class="title"><h2>出差费用申请单</h2></td>
			
				</tr>
				<tr style="opacity: 0;">
					<td colspan="14">11</td>
				</tr>
				<tr >
					<td colspan="14" style="text-align: left;">
						<!--錯誤信息提示  -->
					<div class="alert alert-danger alert-dismissable" style="display:none;" role="alert">
						错误信息:<button class="thisclose close" type="button">&times;</button>
						<span class="error-mess"></span>
					</div>
					</td>
				</tr>
				<tr >
					<td class="titleleft"><label class="control-label">标题</label></td>
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
					<td class="titleleft" ><label class="control-label">申请人</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu"
					readonly="readonly" style="background-color:#fff;" value="${username}"/></td>
					<td class="title" ><label class="control-label">相关客户</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu" name="name"/></td>
				</tr>
				
				<tr >
					<td class="titleleft" ><label class="control-label">开始日期</label></td>
					<td  colspan="6">
					<input type="text" class="form-control inpu start"  name="proId.startTime"
					readonly="readonly" style="background-color:#fff;" value="${(prolist.startTime)!''}"/></td>
					<td class="title" ><label class="control-label">结束日期</label></td>
					<td  colspan="6">
					<input type="text" class="form-control inpu end" name="proId.endTime"
					readonly="readonly" style="background-color:#fff;" value="${(prolist.endTime)!''}"/></td>
				
				</tr>
					<tr >
					
					<td class="titleleft" ><label class="control-label">相关票据</label></td>
					<td  colspan="6">
						<div class="btn btn-default"style="position: relative; overflow: hidden;width: 100%;
    							margin-top: -6px;">
							<i class="glyphicon glyphicon-open"></i> 上传票据
							<input type="file" name="filePath" style="opacity: 0; position: absolute;
								 top: 12px; right: 0; " class='inpu'>
						</div>
					</td>
					<td class="title" ><label class="control-label">审核人员</label></td>
					<td  colspan="6" class="tt">
						<input type="text" class="form-control inpu" readonly="readonly" 
							   style="background-color:#fff;" name="shenname" placeholder="请选自己的上级"/>
						<div class="reciver">
							<span class="label label-success glyphicon glyphicon-plus">通讯录</span>
						</div>
					</td>
				</tr>
				<tr >
					<td class="titleleft" ><label class="control-label">申请理由</label></td>
					<td  colspan="6"><textarea class="form-control text" name="proId.processDescribe"></textarea></td>
					<td class="titleleft" ><label class="control-label">出差申请</label></td>
					
					
					<td  colspan="6">
					<input type="text" class="form-control inpu"  value="${(prolist.processName)!''}"/>
					<input type="text" style="display:none;" name="pro" value="${(prolist.processId)!''}"/>
					</td>
						
					
					
				</tr>
				<tr >
					<td class="titleleft"   ><label class="control-label">差旅交通明细</label></td>
					<td colspan="13" style="text-align: right;" ><i class="glyphicon glyphicon-plus trazeng"></i>&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-minus trajian"></i></td>
					
				</tr>
				
				<tr >
					<td colspan="14" >
					<div class="food">
						<table class="table inside">
							<thead>
								<tr>
									 <th  style="width: 44px;">选择 </th>
									 <th colspan="2">出差人员</th>
									 <th colspan="2">出发日期</th>
									 <th colspan="2">出发城市</th>
									 <th colspan="2">到达城市</th>
									 <th colspan="2">交通工具</th>
									 <th >座位类型</th>
									 <th colspan="2">交通标准</th>
								</tr>
							</thead>
							<tbody class="tbody traffic tt">
								<tr>
									<td class="chebox" ><span class="labels"><label><input type="checkbox" name="top" class="val" ><i>✓</i></label></span></td>
									<td colspan="2"><input type="text" class="form-control inpu" readonly="readonly" 
												   style="background-color:#fff;" name="traffic[0].username"/>
											<div class="reciver">
												<span style="color:green;" class=" glyphicon glyphicon-plus"></span>
											</div>
									</td>
									<td colspan="2" ><input type="text" class="form-control inpu chu" name="traffic[0].departTime"/></td>
									<td colspan="2"><input type="text" class="form-control inpu" name="traffic[0].departName"/></td>
									<td colspan="2"><input type="text" class="form-control inpu" name="traffic[0].reachName"/></td>
									<td colspan="2"><input type="text" class="form-control inpu" name="traffic[0].trafficName"/></td>
									<td ><input type="text" class="form-control inpu" name="traffic[0].seatType"/></td>
									<td colspan="2" class="tdrig"><input type="text" class="form-control inpu" name="traffic[0].trafficMoney"/></td>
									
								</tr>
								
					
							</tbody>
						</table>
					</div>
					</td>
				</tr>
				<tr >
					<td class="title"   ><label class="control-label">差旅住宿明细</label></td>
					<td colspan="13" style="text-align: right;" ><i class="glyphicon glyphicon-plus stayzeng"></i>&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-minus stayjian"></i></td>
					
				</tr>
				<tr>
					<td colspan="14" >
					<div class="food">
						<table class="table inside">
							<thead>
								<tr>
									 <th  style="width: 44px;">选择</th>
									 <th colspan="2">出差人员</th>
									 <th colspan="2">入住日期</th>
									 <th colspan="2">离店日期</th>
									 <th colspan="2">入住城市</th>
									 <th colspan="2">入住酒店</th>
									 <th >入住天数</th>
									 <th colspan="2">住宿标准/天</th>
								</tr>
							</thead>
							<tbody class="tbody stay tt">
								<tr>
									<td class="chebox" ><span class="labels"><label><input type="checkbox" name="items" class="val" ><i>✓</i></label></span></td>
									<td colspan="2"><input type="text" class="form-control inpu" name="stay[0].nameuser" readonly="readonly" 
												   style="background-color:#fff;"/>
													<div class="reciver">
														<span style="color:green;" class=" glyphicon glyphicon-plus"></span>
													</div>
									</td>
									<td colspan="2" class="t1"><input type="text" class="form-control inpu chu" name="stay[0].stayTime"/></td>
									<td colspan="2" class="t2"><input type="text" class="form-control inpu chu" name="stay[0].leaveTime"/></td>
									<td colspan="2" class="date"><input type="text" class="form-control inpu leave" name="stay[0].stayCity"/></td>
									<td colspan="2"><input type="text" class="form-control inpu" name="stay[0].hotelName"/></td>
									<td class="day"><input type="text" class="form-control inpu " name="stay[0].day"
									readonly="readonly"  style="background-color:#fff;"/></td>
									<td colspan="2" class="tdrig"><input type="text" class="form-control inpu" name="stay[0].stayMoney"/></td>
								</tr>
							</tbody>
						</table>
					</div>
					</td>
				</tr>
				<tr >

					<td colspan="14" style="text-align: right;" >
					<input   type="text" value="出差费用" name="val" hidden="hidden"/>
					<input type="text" class="days" hidden="hidden" name="proId.procseeDays"/>
						<input class="btn btn-primary" id="save" type="submit" value="保存" />
						<input class="btn btn-default" id="cancel" type="button" value="取消"
						onclick="window.history.back();" />
					</td>
					
				</tr>
				</table>
				
			</div>
		</div>
			</form>
	</div>
</div>
<input type="text" class="recive_list" style="display:none;">
<input type="text" class="ject" style="display:none;">
<#include "/common/modalTip.ftl"> 
<script>
	
//表单提交前执行的onsubmit()方法；返回false时，执行相应的提示信息；返回true就提交表单到后台校验与执行
function check() {
	console.log("开始进入了");
	//提示框可能在提交之前是block状态，所以在这之前要设置成none
	$('.alert-danger').css('display', 'none');
	var isRight = 1;
	$('.form-control').each(function(index) {
		// 如果在这些input框中，判断是否能够为空
		if ($(this).val() == "") {
			if($(this).hasClass("cha")){
				return true;
			}
			// 排除哪些字段是可以为空的，在这里排除
			/* if (index == 5||index == 6) {
				return true;
			}  */
			
			// 获取到input框的兄弟的文本信息，并对应提醒；
			console.log(index);
			var errorMess = "红色提示框不能为空!";
			// 对齐设置错误信息提醒；红色边框
			$(this).parent().addClass("has-error has-feedback");
			$('.alert-danger').css('display', 'block');
			// 提示框的错误信息显示
			$('.error-mess').text(errorMess);
			
			isRight = 0;
			return false;
			
		} else {
			return true;
		}
	});
	
	if (isRight == 0) {
		//modalShow(0);
		 return false;
	} else if (isRight == 1) {
		//modalShow(1);
		 return true;
	}
//	return false;
}

	$(function(){
		
		$(".tt").on("focus",".leave",function(){
			console.log("11")
			var $time1=$(this).parents(".date").siblings(".t1").children().val();
			var $time2=$(this).parents(".date").siblings(".t2").children().val();
			var $date1=new Date($time1);
			var $date2=new Date($time2);
			var min=$date2.getTime()-$date1.getTime();
			var  tianshu = Math.ceil(min / (24*60*60*1000));
			$(this).parents(".date").siblings(".day").children().val(tianshu);
			var $star=new Date($(".start").val());
			var $end=new Date($(".end").val());
			tt=$end.getTime()-$star.getTime();
			$(".days").val(Math.ceil(tt/ (24*60*60*1000)))
		});
		
		$('.tt').on('click','.reciver',function(){
			$('#myModal').modal("toggle");
			$(this).siblings("input").val("");
			$('.tt .reciver').removeClass("qu");
			$(this).addClass("qu");
		});
		$(".recive_list").change(function(){
			var	$val=$(this).val();
			$(".qu").siblings("input").val($val);
		
		});
		
		var j=1;
		//增加一行
		$(".stayzeng").click(function(){
			
			var date=new Date();
			var nowDate=date.Format('yyyy-MM-dd hh:mm:ss');
			var star=addDate(nowDate,0);
			var td1 = $('<td class="chebox"></td>').append($('<span class="labels"></span>').append($('<label></label>').append($('<input type="checkbox" name="items"  class="val" >')).append($('<i></i>').text('✓'))));
			var td2 = $('<td  colspan="2" "></td>').append($('<input type="text" class="form-control inpu" readonly="readonly"  style="background-color:#fff;" name="stay['+j+'].nameuser"/>'))
												 .append($('<div class="reciver"></div>').append($('<span style="color:green;" class=" glyphicon glyphicon-plus"></span>')));
			var td3 = $('<td colspan="2" class="t1"></td>').append($('<input type="text" class="form-control inpu car" name="stay['+j+'].stayTime"/>').val(star));
			var td4 = $('<td colspan="2" class="t2"></td>').append($('<input type="text" class="form-control inpu car" name="stay['+j+'].leaveTime"/>').val(star));
			var td5 = $('<td colspan="2" class="date"></td>').append($('<input type="text" class="form-control inpu leave" name="stay['+j+'].stayCity"/>'));
			var td6 = $('<td colspan="2"></td>').append($('<input type="text" class="form-control inpu" name="stay['+j+'].hotelName"/>'));
			var td7 = $('<td class="day"></td>').append($('<input type="text" class="form-control inpu" name="stay['+j+'].day"/>'));
			var td8 = $('<td colspan="2" class="tdrig"></td>').append($('<input type="text" class="form-control inpu" name="stay['+j+'].stayMoney"/>'));
			var tr = $('<tr class="tr" ></tr>').append(td1).append(td2).append(td3).append(td4).append(td5).append(td6).append(td7).append(td8);
			$('.stay').append(tr);
			j=j+1;
		});
		
		
	
		//把tr置空
		$(".stayjian").click(function(){
			console.log("yy");
			 $("[name=items]:checkbox").each(function(){
				 if(this.checked){
	    			//获取被选中了的行
	    			var $tr=$(this).parents(".tr");
					$tr.html("");
	    					
	    			}
			 })
		});
		
		var i=1;
		//增加一行
		$(".trazeng").click(function(){
			var date=new Date();
			var nowDate=date.Format('yyyy-MM-dd hh:mm:ss');
			var star=addDate(nowDate,0);
			var td1 = $('<td class="chebox"></td>').append($('<span class="labels"></span>').append($('<label></label>').append($('<input type="checkbox" name="top"  class="val" >')).append($('<i></i>').text('✓'))));
			var td2 = $('<td  colspan="2"></td>').append($('<input type="text" class="form-control inpu" readonly="readonly"  style="background-color:#fff;" name="traffic['+i+'].username"/>'))
												 .append($('<div class="reciver"></div>').append($('<span style="color:green;" class=" glyphicon glyphicon-plus"></span>')));
			var td3 = $('<td colspan="2"></td>').append($('<input type="text" class="form-control inpu car" name="traffic['+i+'].departTime"/>').val(star));
			var td4 = $('<td colspan="2"></td>').append($('<input type="text" class="form-control inpu" name="traffic['+i+'].departName"/>'));
			var td5 = $('<td colspan="2"></td>').append($('<input type="text" class="form-control inpu" name="traffic['+i+'].reachName"/>'));
			var td6 = $('<td colspan="2"></td>').append($('<input type="text" class="form-control inpu" name="traffic['+i+'].trafficName"/>'));
			var td7 = $('<td ></td>').append($('<input type="text" class="form-control inpu" name="traffic['+i+'].seatType"/>'));
			var td8 = $('<td colspan="2" class="tdrig"></td>').append($('<input type="text" class="form-control inpu" name="traffic['+i+'].trafficMoney"/>'));
			var tr = $('<tr class="tr"></tr>').append(td1).append(td2).append(td3).append(td4).append(td5).append(td6).append(td7).append(td8);
			$('.traffic').append(tr);
			i=i+1;
		});
		
		
	
		//把tr置空
		$(".trajian").click(function(){
			
			 $("[name=top]:checkbox").each(function(){
				 if(this.checked){
	    			//获取被选中了的行
	    			var $tr=$(this).parents(".tr");
					$tr.html("");
	    					
	    			}
			 })
		});
		
		
		
	})
</script>
<#include "/common/reciver.ftl">
<script type="text/javascript" src="js/common/data.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>