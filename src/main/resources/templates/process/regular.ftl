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
		<h1 style="font-size: 24px; margin: 0;" class="">转正申请</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">转正申请</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		
		<div class="bgc-w box">
			
			<div class="box-header">
				<table class="bo table ">
			
				<tr >
					<td colspan="14" class="title"><h2>转正申请单</h2></td>
			
				</tr>
				<tr style="opacity: 0;">
					<td colspan="14">11</td>
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
					<td class="title" ><label class="control-label">审核人员</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu"/></td>
				</tr>
				
				<tr >
					<td class="title" ><label class="control-label">实习/试用心得</label></td>
					<td  colspan="6"><textarea class="form-control text" name="taskDescribe"></textarea></td>
					<td class="title" ><label class="control-label">本岗位职责理解</label></td>
					<td  colspan="6"><textarea class="form-control text" name="taskDescribe"></textarea></td>
				</tr>
					
				
				<tr >
					<td class="title" ><label class="control-label">实习/试用成长</label></td>
					<td  colspan="6"><textarea class="form-control text" name="taskDescribe"></textarea></td>
					<td class="title" ><label class="control-label">目前存在的不足</label></td>
					<td  colspan="6"><textarea class="form-control text" name="taskDescribe"></textarea></td>
				</tr>
				<tr >
					<td class="title" ><label class="control-label">如何作得更好</label></td>
					<td  colspan="6"><textarea class="form-control text" name="taskDescribe"></textarea></td>
					<td class="title" ><label class="control-label">对公司建议及意见</label></td>
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
