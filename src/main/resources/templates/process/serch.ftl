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


.title{
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
.bottom{
border-bottom:1px solid rgba(0, 0, 0, 0.31);
height: 19px;
}
.wi{
	width:100px;
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
			
			<div class="box-header">
				<table class="bo table ">
			
				<tr >
					<td colspan="14" class="title"><h2>费用报销单</h2></td>
			
				</tr>
				<tr style="opacity: 0;">
					<td colspan="14">11</td>
				</tr>
				<tr >
					<td class="wi" ><label class="control-label">标题</label></td>
					<td colspan="7" class="underline" style="width:160px;"><div class="bottom" ><label class="control-label">标题</label></div></td>
					<td class="css" style="width:30px;"></td>
					
					<td style="width: 72px;"><label class="control-label">紧急程度</label></td>
					<td colspan="4" class="underline" style="width: 60px;"><div class="bottom"></div></td>
					
				</tr>
				<tr >
					<td class="wi" ><label class="control-label">提单人员</label></td>
					<td  style="width:140px;"><div class="bottom"></div></td>
					<td class="css"style="width:30px;"></td>
					<td  style="width:90px;"><label class="control-label">提单部门</label></td>
					<td colspan="4" style="width:44px;"><div class="bottom"></div></td>
					<td class="css" style="width:30px;"></td>
					<td ><label class="control-label">提单日期</label></td>
					<td colspan="4" ><div class="bottom"></div></td>
					
				</tr>
				
				
				<tr >
					<td colspan="14" >
					<div >
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
										<input type="text" class="form-control inpu" name="details[0].subject"
										readonly="readonly" style="background-color:#fff;"/>
										
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
						<input class="btn btn-default" id="cancel" type="submit" value="返回"
						onclick="window.history.back();" />
					</td>
					
				</tr>
				</table>
			</div>
		</div>
	</div>
</div>


