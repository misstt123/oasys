<#include "/common/commoncss.ftl">
<link rel="stylesheet" href="css/common/tanchuang.css" />
<style>
a {
	color: black;
}

a:hover {
	text-decoration: none;
}



.text {
	min-height: 114px;
}
.reciver{
	position: relative;
    top: -27px;
    float: right;
    right: 4px;
    cursor: pointer;
}
.text{
	height:114px;
}
.page{
	margin-bottom: 25px;
    margin-top: 15px;
    margin-left: -10px;
    margin-right: -10px;
}
.shuxian{
	height: 30px;
    border-left: 1px solid #eee;
    margin-left: 35px;
    margin-bottom: 8px;
    margin-top: 8px;
}
.shen{
	min-height:50px;
	border:0px solid red;
	margin-left: 13px;
    margin-right: 17px;
}
.content{
	display: inline-block;
   background-color: #eee;
    width: 95%;
    min-height: 80px;
    border-radius: 5px;
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
				<h3 class="box-title">
					<a href="javascript:history.back();" class="label label-default"
						style="padding: 5px;">
						 <i class="glyphicon glyphicon-chevron-left"></i> <span>返回</span>
					</a>
				</h3>
			</div>
			
			<div class="box-body">
				<div class="shuxian"></div>
				<div class="shen">
					<p>申请人：盖茨<span class="pull-right">2017-10-10 11:20:30</span></p>
					<div >
					<img src="images/handsome.JPG" style="width: 50px;height: 50px;border-radius: 72px;margin-top: -102px;"/>
					<div class="content"></div>
					</div>
				</div>
				<div class="shuxian"></div>
				<div>
					<i class="glyphicon glyphicon-record" style="color:#9E9E9E;padding-left: 13px;"></i> 开始申请
				</div>
				<div class="page-header page"></div>
				<div class="col-md-6 form-group">
					<label class="control-label">审核状态</label>
						 <select class="form-control" name="typeId" style="z-index: 1;">
							<option value="1">已批准</option>
							<option value="2">未通过</option>
						</select>
				</div>
				<div class="col-md-6 form-group" style="position: relative;">
					<label class="control-label" data-toggle="modal" data-target="#myModal">下一步审核人</label>
						<input name="reciverlist" type="text" id="recive_list"
							   class="form-control " readonly="readonly" style="background-color:#fff;"/>
							<div class="reciver">
								<span class="label label-success glyphicon glyphicon-plus"
									data-toggle="modal" data-target="#myModal">通讯录</span>
							</div>
				</div>
				 <div class="col-md-6 form-group" style="float: none;">
					<label class="control-label">审核理由</label>
					<textarea class="form-control text" name="taskDescribe"></textarea>
				</div> 
				
			</div>
			<div class="box-footer" style="padding-left: 26px;">
				<input class="btn btn-info" id="save" type="submit" value="审核并流转" name="liuzhuan"/>
				<input class="btn btn-success" id="save" type="submit" value="审核并结案" />
				<input class="btn btn-default" id="cancel" type="submit" value="取消"
					onclick="window.history.back();" />
			</div>
		</div>
	</div>
</div>


<#include "/common/reciver.ftl">
