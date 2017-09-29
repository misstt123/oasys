<#include "/common/commoncss.ftl">
<style type="text/css">

a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}
.red{
	color:#d9534f;
	font-weight:100;
	font-size:1px;
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
			<form action="formtest" method="post">
				<!--盒子身体-->
				<div class="box-body no-padding">
					<div class="box-body">
						<div class="alert alert-danger alert-dismissable" role="alert"
							style="display: none;">
							错误信息:<button class="close" type="button">&times;</button>
							<span class="error-mess"></span>
						</div>
						<div class="row">
							<div class="col-md-6 form-group">
								<label class="control-label"><span>statusName</span></label> 
								<input class="form-control" name="statusName"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>statusSortValue</span></label> 
								<input class="form-control" name="statusSortValue"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>statusModel</span></label> 
								<input class="form-control" name="statusModel"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>statusColor</span></label> 
								<input class="form-control" name="statusColor"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>名称</span></label> 
								<input class="form-control" name="menuName"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>图标</span> <a href="http://v3.bootcss.com/components/" target="_blank" title="图标参考"><span class="glyphicon glyphicon-list-alt"></span></a></label> 
								<input class="form-control" name="menuIcon"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>路径</span></label>
								 <input	class="form-control"  name="menuUrl"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>排序</span></label>
								 <input type="number" min="0" class="form-control"  name="sortId"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>父级</span></label> 
								 <select class="form-control" name="parentId">
								 	<option value="1" selected="selected">第一个</option>
								 	<option value="2" selected="selected">第二个</option>
								 	<option value="3" selected="selected">第三个</option>
								 </select>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>显示</span></label><br>
										<span class="labels"><label><input name="show" type="checkbox"><i>✓</i></label></span>
							</div>
						</div>
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

