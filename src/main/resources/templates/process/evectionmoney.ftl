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
.food{
	padding-left:15px
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
					<td class="title" ><label class="control-label">相关客户</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu"/></td>
				</tr>
				
				<tr >
					<td class="title" ><label class="control-label">开始日期</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu"/></td>
					<td class="title" ><label class="control-label">结束日期</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu"/></td>
				</tr>
					<tr >
					
					<td class="title" ><label class="control-label">相关票据</label></td>
					<td  colspan="6">
						<div class="btn btn-default"style="position: relative; overflow: hidden;width: 100%;
    							margin-top: -6px;">
							<i class="glyphicon glyphicon-open"></i> 上传票据
							<input type="file" name="filePath" style="opacity: 0; position: absolute;
								 top: 0; right: 0; " class='inpu'>
						</div>
					</td>
					<td class="title" ><label class="control-label">审核人员</label></td>
					<td  colspan="6"><input type="text" class="form-control inpu"/></td>
					
				</tr>
				<tr >
					<td class="title" ><label class="control-label">申请理由</label></td>
					<td  colspan="6"><textarea class="form-control text" name="taskDescribe"></textarea></td>
				</tr>
				<tr >
					<td class="title"   ><label class="control-label">差旅交通明细</label></td>
					<td colspan="13" style="text-align: right;" ><i class="glyphicon glyphicon-plus"></i>&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-minus"></i></td>
					
				</tr>
				
				<tr >
					<td colspan="14" >
					<div class="food">
						<table class="table inside">
							<thead>
								<tr>
									 <th  style="width: 44px;">序号</th>
									 <th colspan="2">出差人员</th>
									 <th colspan="2">出发日期</th>
									 <th colspan="2">出发城市</th>
									 <th colspan="2">到达城市</th>
									 <th colspan="2">交通工具</th>
									 <th >座位类型</th>
									 <th colspan="2">交通标准</th>
								</tr>
							</thead>
							<tbody class="tbody">
								<tr>
									<td class="chebox" ><span class="labels"><label><input type="checkbox" name="top" class="val" ><i>✓</i></label></span></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td ><input type="text" class="form-control inpu"/></td>
									<td colspan="2" class="tdrig"><input type="text" class="form-control inpu"/></td>
									
								</tr>
								<tr>
									<td class="chebox" ><span class="labels"><label><input type="checkbox" name="top" class="val" ><i>✓</i></label></span></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td ><input type="text" class="form-control inpu"/></td>
									<td colspan="2" class="tdrig"><input type="text" class="form-control inpu"/></td>
									
								</tr>
					
							</tbody>
						</table>
					</div>
					</td>
				</tr>
				<tr >
					<td class="title"   ><label class="control-label">差旅住宿明细</label></td>
					<td colspan="13" style="text-align: right;" ><i class="glyphicon glyphicon-plus"></i>&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-minus"></i></td>
					
				</tr>
				<tr>
					<td colspan="14" >
					<div class="food">
						<table class="table inside">
							<thead>
								<tr>
									 <th  style="width: 44px;">序号</th>
									 <th colspan="2">出差人员</th>
									 <th colspan="2">入住日期</th>
									 <th colspan="2">离店日期</th>
									 <th colspan="2">入住城市</th>
									 <th colspan="2">入住酒店</th>
									 <th >入住天数</th>
									 <th colspan="2">住宿标准</th>
								</tr>
							</thead>
							<tbody class="tbody">
								<tr>
									<td class="chebox" ><span class="labels"><label><input type="checkbox" name="top" class="val" ><i>✓</i></label></span></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td ><input type="text" class="form-control inpu"/></td>
									<td colspan="2" class="tdrig"><input type="text" class="form-control inpu"/></td>
									
								</tr>
								<tr>
									<td class="chebox" ><span class="labels"><label><input type="checkbox" name="top" class="val" ><i>✓</i></label></span></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td colspan="2"><input type="text" class="form-control inpu"/></td>
									<td ><input type="text" class="form-control inpu"/></td>
									<td colspan="2" class="tdrig"><input type="text" class="form-control inpu"/></td>
									
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
			
		</div>
	</div>
</div>
