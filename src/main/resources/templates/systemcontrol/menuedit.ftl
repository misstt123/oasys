<#include "/common/commoncss.ftl">
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
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">菜单管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">菜单管理</a>
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
					<#if menuObj??>
					<div class="row">
						<div class="col-md-6 form-group">
							<label class="control-label"><span>名称</span></label> <input
								class="form-control" value="${menuObj.menuName}"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>图标</span></label> <input
								class="form-control" value="${menuObj.menuIcon}"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>路径</span></label> <input
								class="form-control" value="${menuObj.menuUrl}"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>排序</span></label> <input
								class="form-control" value="${menuObj.sortId}"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>显示</span></label><br>
							<#if menuObj.isShow==1>
								<span class="labels"><label><input type="checkbox" checked><i>✓</i></label></span>
								<#else>
								<span class="labels"><label><input type="checkbox"><i>✓</i></label></span>
							</#if>
						</div>
						
					</div>
					<#else>
					<div class="row">
						<div class="col-md-6 form-group">
							<label class="control-label"><span>名称</span></label> <input
								class="form-control" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>图标</span></label> <input
								class="form-control" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>路径</span></label> <input
								class="form-control" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>排序</span></label> <input
								class="form-control" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>显示</span></label><br>
								<span class="labels"><label><input type="checkbox"><i>✓</i></label></span>
						</div>
						
					</div>
					</#if>

				</div>
			</div>
			<!--盒子尾-->
			<div class="box-footer">
				<input class="btn btn-primary" id="save" type="submit" value="保存" />
				<input class="btn btn-default" id="cancel" type="submit" value="取消"
					onclick="window.history.back();" />
			</div>
		</div>
	</div>
</div>