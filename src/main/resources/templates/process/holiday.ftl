<#include "/common/commoncss.ftl">
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
.table{
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
.table thead{
background-color: rgba(76, 175, 95, 0.06);
}
.table>tbody>tr>td{
 border-top: 0px solid #ddd;
}
.table>tbody>tr>td{
border-bottom: 1px solid #ddd;
border-left: 1px solid #ddd;
}
.tdrig{
border-right: 1px solid #ddd;
}
.bo>tbody>tr>td,.table>thead>tr>th {
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
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">请假申请</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">请假申请</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		
		<div class="bgc-w box">
			
			<div class="box-header">
				<table class="bo table ">
			
				<tr >
					<td colspan="14" class="title"><h2>请假申请单</h2></td>
			
				</tr>
				<tr style="opacity: 0;">
					<td colspan="14">11</td>
				</tr>
					<tr >
					<td class="title"><label class="control-label">请假说明</label></td>
					<td  colspan="13"><textarea class="form-control shuoming" name="taskDescribe" readonly="readonly" style="background-color:#fff;">
员工因临时或突发情况无法到岗，未能提前请病假或事假的，则应用电话通知直接上级批准后，短信通知人事行政部，说明请假事由，并在上班后第一时间补办请假手续，如在2个工作日内未提交请假流程，超过2个工作日补流程无效，均视为旷工，扣除当日双倍工资。  
1、年假：工作满一年以上每年可享受带薪年假，当年的年假使用期至次年3月1日止；未经用人单位批准，员工不得自行休假。  
2、事假：按照平均工作日扣发薪资（包含工资及各类补贴福利）；单次事假原则上不应超过3天，当年累计事假超过15天的视为主动放弃继续履行岗位职责的权利，特殊情况除外。  
3、病假：两天及以上病假必须持工作地二级甲等以上医院相关病假证明单或就医记录证明，否则无法享受病假工资；单次病假超过5天，应当持有工作所在地三级甲等医院提供的病假证明单。原则上当年累计病假超过15天应视为不具备继续履行岗位职责身体条件，特殊情况除外。  
4、婚假：婚假为十天，包含休息日，请婚假必须持结婚证明，结婚证必须在泛微工作期间领取，且婚假必须在一年内使用完毕，不得分次休假，国家或地方政府有其他规定的按照当地要求执行；  
5、产假及哺乳假：按国家及地方法律法规执行，包含休息日与法定节假日；  
6、陪产假：泛微正式男性员工在工作期间配偶生育的，可凭子女出生证明，享受十个自然日陪产假。  
7、丧假：直系亲属：配偶、子女、父母可享受三天，岳父母、祖父母、外祖父母可享受一天
					</textarea></td>
				</tr>
				<tr >
					<td class="title"><label class="control-label">标题</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu"/></td>
					
					<td class="title"><span >紧急程度</span></td>
					<td colspan="6">
						<select class="form-control inpu">
							<option>22</option>
						</select>
					</td>
					
				</tr>
				<tr >
					<td class="title" ><label class="control-label">申请人</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu"/></td>
					<td class="title" ><label class="control-label">请假类型</label></td>
					<td colspan="6">
						<select class="form-control inpu">
							<option>22</option>
						</select>
					</td>
				</tr>
				
				<tr >
					<td class="title" ><label class="control-label">开始日期</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu"/></td>
					<td class="title" ><label class="control-label">结束日期</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu"/></td>
				</tr>
					<tr >
					<td class="title" ><label class="control-label">请假上限天数</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu"/></td>
					<td class="title" ><label class="control-label">审核人员</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu"/></td>
				</tr>
				
				<tr >
					<td class="title" ><label class="control-label">相关资料</label></td>
					<td  colspan="6">
						<div class="btn btn-default"style="position: relative; overflow: hidden;width: 100%;
    							margin-top: -6px;">
							<i class="glyphicon glyphicon-open"></i> 上传资料
							<input type="file" name="filePath" style="opacity: 0; position: absolute;
								 top: 0; right: 0; " class='inpu'>
						</div>
					</td>
					<td class="title" ><label class="control-label">请假原因</label></td>
					<td  colspan="6"><textarea class="form-control text" name="taskDescribe"></textarea></td>
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
