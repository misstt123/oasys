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
			<form action="changemess" method="post">
				<!--盒子身体-->
				<div class="box-body no-padding">
					<div class="box-body">
						<div class="alert alert-success alert-dismissable" role="alert">
							<button class="close" type="button" data-dismiss="alert">&times;</button>
							恭喜您操作成功！
						</div>
						<#if menuObj??>
						<#if getAdd??>
							<div class="row">
							<div class="col-md-6 form-group has-error has-feedback">
								<label class="control-label"><span>名称</span></label> <input required="required"
									class="form-control"  name="name"/>
									<span class="glyphicon glyphicon-remove form-control-feedback"></span>
							</div>
							<div class="col-md-6 form-group has-error has-feedback">
								<label class="control-label"><span>图标</span></label> <input required="required"
									class="form-control" name="icon"/>
									<span class="glyphicon glyphicon-remove form-control-feedback"></span>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>路径</span></label> <input
									class="form-control" name="url"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>排序</span></label> <input 
									class="form-control" name="sort"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>父级</span></label> <input
									class="form-control" name="parent" value="${menuObj.menuId}" readonly="readonly"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>显示</span></label><br>
									<span class="labels"><label><input name="checkid" type="checkbox"><i>✓</i></label></span>
							</div>
							
						</div>
						<#else>
						
						<div class="row">
							<div class="col-md-6 form-group">
								<label class="control-label"><span>名称</span></label> <input
									class="form-control" value="${menuObj.menuName}" name="name"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>图标</span></label> <input
									class="form-control" value="${menuObj.menuIcon}" name="icon"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>路径</span></label> <input
									class="form-control" value="${menuObj.menuUrl}" name="url"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>排序</span></label> <input
									class="form-control" value="${menuObj.sortId}" name="sort"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>父级</span></label> <input
									class="form-control" value="${menuObj.parentId}" name="parent"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>显示</span></label><br>
								<#if menuObj.isShow==1>
									<span class="labels"><label><input name="checkid" type="checkbox" checked><i>✓</i></label></span>
									<#else>
									<span class="labels"><label><input name="checkid" type="checkbox"><i>✓</i></label></span>
								</#if>
							</div>
							
						</div>
					</#if>
					<#else>
					<div class="row">
						<div class="col-md-6 form-group">
							<label class="control-label"><span>名称</span></label> <input
								class="form-control"  name="name"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>图标</span></label> <input
								class="form-control" name="icon"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>路径</span></label> <input
								class="form-control" name="url"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>排序</span></label> <input
								class="form-control" name="sort"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>父级</span></label> <input
								class="form-control" name="parent"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>显示</span></label><br>
								<span class="labels"><label><input name="checkid" type="checkbox"><i>✓</i></label></span>
						</div>
						
					</div>
					</#if>

				</div>
				</div>

				<!--盒子尾-->
				<div class="box-footer">
					<input class="btn btn-primary" id="save" type="submit" value="保存" />
					<input class="btn btn-default" id="cancel" type="button" value="取消"
						onclick="window.history.back();" />
				</div>
			</form>
		</div>

	</div>
</div>