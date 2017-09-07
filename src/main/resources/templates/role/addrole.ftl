<#include "/common/commoncss.ftl">
<link rel="stylesheet" type="text/css" href="css/common/checkbox.css" />
<style type="text/css">
a {
	color: black;
}

a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}

</style>
<script>
	$(function(){
		$("#save").click(function(){
			
		})
	})
</script>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">角色管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">角色管理</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		<!--id="container"-->
		<div class="bgc-w box">
			<!--盒子头-->
			<div class="box-header">
				<h3 class="box-title">
					<a href="javascript:history.back();" class="label label-default"
						style="padding: 5px;"> <i
						class="glyphicon glyphicon-chevron-left"></i> <span>返回</span>
					</a>
				</h3>
			</div>
			<!--盒子身体-->
			<div class="box-body no-padding">
				<div class="box-body">
					<div class="row">
						<div class="col-md-6 form-group">
								<label>
									<span id="ctl00_cphMain_Label1">名称</span>
								</label>
								<input name="ctl00$cphMain$txtName" type="text" id="ctl00_cphMain_txtName" class="form-control"/>
							</div>
							<div class="col-md-6 form-group">
								<label>
									<span id="ctl00_cphMain_Label2">类型值</span>
								</label>
								<input name="ctl00$cphMain$txtPowerValue" disabled="disabled" type="text" id="ctl00_cphMain_txtPowerValue"
								style="background-color:#fff;" class="form-control"/>
							</div>
					</div>
				</div>
			</div>
			<!--盒子尾-->
			<div class="box-footer">
				<a class="btn btn-primary" id="save"  href="#" >保存</a>
				<input class="btn btn-default" id="cancel" type="submit" value="取消"
					onclick="window.history.back();" />
			</div>
		</div>
	</div>
</div>