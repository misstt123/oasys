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
.control-label{
	display:inline-block;
	font-weight: 400;
}
.bo{
	margin: 0px auto;
	width: 80%;
}


.title{
	font-weight: 400;
	text-align: center;
	color:#2196F3;
}
.inside{
	width: 100%;
}
.inside th,.inside td{
	text-align: center;
}
.inside thead,.inside tfoot,.bac{
	background-color:#6d9eeb;
	color:#fff;
}
.inside>tbody>tr>td{
 	border-top: 0px solid #ddd;
}
.inside>tbody>tr>td{
	border-bottom: 1px solid #ddd;
	border-left: 1px solid #ddd;
}

.bo>tbody>tr>td,.inside>thead>tr>th{
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
	color:#2196F3;
}
.rile{
    border-left: 1px solid #2196F3;
    border-right: 1px solid #2196F3;
}
.top{
	border-left: 1px solid #2196F3;
    border-right: 1px solid #2196F3;
}
.ss{
border-top: 1px solid #2196F3;
}
.bo tr{
	height:50px;
}
.top td{
	height:30px;
}
 .top label{
	padding-top:16px;
	border-bottom: 2px solid #2196F3;
}
.top div{
	border-bottom:1px solid rgba(0, 0, 0, 0.31);
	height: 40px;
}
 .two label{
	padding-top:15px;
}
.two div{
	margin-top: 15px;
}
.font{
	font-size:16px;
}
.inside tr{
	height:0px;
}

.inside thead th,.inside tfoot td{
	border-right: 1px solid #fff;
	font-weight: 400;
}
.mm{
	border-right: 0px solid #fff
}
.mon{
	margin-left: -8.5px;
    margin-top: -8.5px;
    height: 75px;
    color:#fff;
}
.out{
	border-left: 1px solid #eee;
	border-right: 1px solid #eee;
	border-bottom: 1px solid #eee;
	height:167px;
}
.fo{
	border-top: 1px solid #2196F3;
   
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">${(map.typename)!''}</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">${(map.typename)!''}</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		
		<div class="bgc-w box">
			
			<div class="box-header">
				<table class="bo table ">
			
				<tr >
					<td colspan="14" class="title"><h2>${(map.typename)!''}单</h2></td>
			
				</tr>
				<tr style="opacity: 0;">
					<td colspan="14">11</td>
				</tr>
				<tr >
					<td class="wi" style="width: 100px;" ><label class="control-label">标题</label></td>
					<td colspan="7" class="underline" style="width:160px;"><div class="bottom" ><label class="control-label">${(map.processName)!''}</label></div></td>
					<td class="css" style="width:30px;"></td>
					
					<td class="wi" style="width: 72px;"><label class="control-label">紧急程度</label></td>
					<td colspan="4" class="underline" style="width: 60px;"><div class="bottom">${(map.harryname)!''}</div></td>
					
				</tr>
				<tr >
					<td class="wi"  style="width: 100px;"><label class="control-label">提单人员</label></td>
					<td  style="width:140px;"><div class="bottom">${(map.username)!''}</div></td>
					<td class="css"style="width:30px;"></td>
					<td class="wi" style="width:90px;"><label class="control-label">提单部门</label></td>
					<td colspan="4" style="width:44px;"><div class="bottom">${(map.deptname)!''}</div></td>
					<td class="css" style="width:30px;"></td>
					<td class="wi"><label class="control-label">提单日期</label></td>
					<td colspan="4" ><div class="bottom">${(map.applytime)!''}</div></td>
					
				</tr>
				
				<tr class="top ss">
					<td colspan="14" class="wi "><div class="bottom" ><label class="control-label font">报销信息</label></div></td>
				</tr>
				
				<tr class="rile two">
					<td class="wi" style="width:100px;"><label class="control-label">证明人</label></td>
					<td  style="width:140px;"><div class="bottom">${(prove.userName)!''}</div></td>
					<td class="css"style="width:30px;"></td>
					<td class="wi" style="width:90px;"><label class="control-label">相关客户</label></td>
					<td colspan="4" style="width:44px;"><div class="bottom">${(bu.name)!''}</div></td>
					<td class="css" style="width:30px;"></td>
					<td class="wi"><label class="control-label">报销方式</label></td>
					<td colspan="4" ><div class="bottom">${(type)!''}</div></td>
				</tr>
				
				<tr class="rile">
					<td class="wi" style="width:100px;"><label class="control-label">报销人员</label></td>
					<td  style="width:140px;"><div class="bottom">${(audit.userName)!''}</div></td>
					<td class="css"style="width:30px;"></td>
					<td class="wi" style="width:90px;"><label class="control-label">报销日期</label></td>
					<td colspan="4" style="width:44px;"><div class="bottom">${(bu.burseTime)!''}</div></td>
					<td class="css" style="width:30px;"></td>
					<td class="wi"><label class="control-label">票据总数</label></td>
					<td colspan="4" ><div class="bottom">${(bu.allinvoices)!''}</div></td>
				</tr>
				
				<tr class="rile">
					<td class="wi" style="width:100px;"><label class="control-label">相关票据</label></td>
					<td  style="width:140px;"><div class="bottom">
							<#if map.file!='file'>
							<#if map.filetype=="img">
							<a href="javacript:void(0);" class="label xiugai yulan" title="图片预览">
							<span class="glyphicon glyphicon-search"></span> 预览</a>
							</#if>
							<a href="file?fileid=${(map.file.attachmentId)!''}" class="label xiugai">
							<span class="glyphicon glyphicon-download-alt"></span> 下载</a>
							</#if>
						</div>
					</td>
					<td class="css" colspan="12" ></td>
					
				</tr>
				
				
				<tr class="top">
					<td colspan="14" class="wi "><div class="bottom" ><label class="control-label font">报销明细</label></div></td>
				</tr>
				<tr class="rile">
					<td colspan="14" >
					<div >
						<table class="table inside">
							<thead>
								<tr>
									 <th colspan="2" >序号</th>
									 <th colspan="2">费用日期</th>
									 <th colspan="2">费用科目</th>
									 <th colspan="2">费用说明</th>
									 <th colspan="2">票据张数</th>
									 <th colspan="2" class="mm">报销金额</th>
								</tr>
							</thead>
							<tbody class="tbody">
							<#list detaillist as detail>
							<tr class="tr">
									<td style="border-left: 0px ;" colspan="2"><span>${detail_index+1}</span></td>
									<td colspan="2"><span>${(detail.produceTime)!''}</span></td>
									<td colspan="2"><span>${(detail.subject)!''}</span></td>
									<td colspan="2"><span>${(detail.descript)!''}</span></td>
									<td colspan="2"><span>${(detail.invoices)!''}</span></td>
									<td colspan="2"><span>${(detail.detailmoney)!''}</span></td>
									
							</tr>
							</#list>
						   </tbody> 
						   <tfoot>
						   	<tr>
						   			<td colspan="2"><span>合计</span></td>
									<td colspan="2"><span></span></td>
									<td colspan="2"><span></span></td>
									<td colspan="2"><span></span></td>
									<td colspan="2"><span>${(bu.allinvoices)!''}</span></td>
									<td colspan="2" class="mm"><span>${(bu.allMoney)!''}</span></td>
						   	</tr>
						   </tfoot>
						</table>
					</div>
					</td>
				</tr>
				<tr class="rile" style="height:70px;">
					<td colspan="14"  >
						<div  class="out">
							<table class="table ob ">
								<tr>
									<td style="width:130px;text-align:center;background-color:#6d9eeb;">
										<div class="mon">
											<p style="height:10px;"></p>
											<span>合计金额</span>
											<br>
											<span>(大写)</span>
										</div>
									</td>
									<td colspan="13"><p style="margin-top: 20px;font-size:16px;">${(money)!''}</p></td>
								</tr>
								
								<tr>
									<td style="width:130px;text-align:center;background-color:#6d9eeb;">
										<div class="mon">
											<p style="height:20px;"></p>
											<span>报销事由</span>
											
										</div>
									</td>
									<td colspan="13"><p style="margin-top: 20px;font-size:16px;">${(map.processDescribe)!''}</p></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr class="top">
					<td colspan="14" class="wi "><div class="bottom" ><label class="control-label font">审批意见</label></div></td>
				</tr>
				<tr class="rile" style="height:70px;">
					<td colspan="14"  >
						<div  class="out">
							<table class="table ob ">
								<tr>
									<td style="width:130px;text-align:center;background-color:#6d9eeb;">
										<div class="mon">
											<p style="height:20px;"></p>
											<span>经理意见</span>
										</div>
									</td>
									<td colspan="13"><p style="margin-top: 20px;font-size:16px;">${(bu.managerAdvice)!''}</p></td>
								</tr>
								
								<tr>
									<td style="width:130px;text-align:center;background-color:#6d9eeb;">
										<div class="mon">
											<p style="height:20px;"></p>
											<span>财务经理意见</span>
											
										</div>
									</td>
									<td colspan="13"><p style="margin-top: 20px;font-size:16px;">${(bu.financialAdvice)!''}</p></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr class="fo">

					<td colspan="14" style="text-align: right;" >
						<div class="pull-right foot">
							<a class="btn btn-default fault fa-back" href="javascript:" onclick="history.back(); ">
								 <span class="glyphicon glyphicon-chevron-left"></span> 返回</a>
							<a class="btn btn-default fault" onclick="javascript:window.print();">
			   					<span class="glyphicon glyphicon glyphicon-print"></span> 打印</a>
			   				<#if map.name="审核">
							<a class="btn btn-primary huifu" href="auditing?id=${map.proId}">
							<span class="glyphicon glyphicon-zoom-in"></span> 审核</a> 
							</#if>
						</div>
				 </td>
				</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<script>
	$(function(){
	
		$('.yulan').popover({
    		html:true,
    		placement:'auto right',
				trigger: 'hover click',
    		template:'<div class="popover" role="tooltip"><div class="arrow"></div>'
    		+'<h3 class="popover-title"></h3><div><img src="show/${(map.filepath)!''}"style="max-width: 200px;"/></div><div class="popover-content"></div></div>'
    	})
	});
</script>