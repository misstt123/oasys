
		<script type="text/javascript" src="js/mail/accounttable.js" ></script>
		<link rel="stylesheet" type="text/css" href="css/common/box.css" />
		<link rel="stylesheet" href="css/mail/accounttable.css" />
		
		
		<script>
			$(function(){
				$(".su").click(function(){
					$(".xz").css("display","block");
					$(".outt").css("display","none");
				})
	})
		</script>

<div class="row outside outt">
			<div class="container col-lg-12">
				<div class="row">
					<div class="col-md-2">
						<h1 style="font-size:24px;margin:0;" class="">账号管理</h1>
					</div>
					<div class="col-md-10 text-right">
						<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
						>
						<a disabled="disabled">账号管理</a>
					</div>
				</div>
				<div class="row" style="padding-top: 15px;">
					<div class="col-md-12">
						<div class="bgc-w box box-primary">
							<!--盒子头-->
							<div class="box-header">
								<button type="button" class=" btn btn-sm btn-success su ">
								<span class="glyphicon glyphicon-plus">新增</span>
							</button>
								<div class="box-tools">
									<div class="input-group" style="width: 150px;margin-top: 6px;">
										<input type="text" class="form-control input-sm" placeholder="查找..." />
										<div class="input-group-btn">
											<a class="btn btn-sm btn-default"><span class="glyphicon glyphicon-search"></span></a>
										</div>
									</div>
								</div>
							</div>
							<!--盒子身体-->
							<div class="box-body no-padding">
								<div >
										<table class="table table-hover ">
												<tr>
													<th scope="col" class="commen mm">ID<span class="block"><img id="img" src="images/desc.gif"/></span></th>
													<th scope="col" class="co commen">类型<span class="block"></span></th>
													<th scope="col">账号名</th>
													<th scope="col">创建时间</th>
													<th scope="col" class="co commen">状态<span class="block"></span></th>
													<th scope="col">操作</th>
												</tr>
											
												<tr>
													<td>
														10
													</td>
													<td >
														<span>系统邮件</span>
													</td>
													<td>
														<span>罗密欧的邮箱</span>
													</td>
													<td >
														<span>2017/8/16 19:24:04</span>
													</td>
													
													<td>
														<span class="label label-primary  change-color">有效</span>
													</td>
													
													<td>
														<a title="修改" href="##" class="label label-primary"><span class="glyphicon glyphicon-edit"></span> 修改</a>
														<a title="删除" href="##" class="label label-primary label-danger"><span class="glyphicon glyphicon-remove"></span> 删除</a>
														
													</td>
												</tr>
												<tr>
													<td>
														10
													</td>
													<td >
														<span>系统邮件</span>
													</td>
													<td>
														<span>罗密欧的邮箱</span>
													</td>
													<td >
														<span>2017/8/16 19:24:04</span>
													</td>
													
													<td>
														<span class="label label-primary  change-color">有效</span>
													</td>
													
													<td>
														<a title="修改" href="##" class="label label-primary"><span class="glyphicon glyphicon-edit"></span> 修改</a>
														<a title="删除" href="##" class="label label-primary label-danger"><span class="glyphicon glyphicon-remove"></span> 删除</a>
														
													</td>
												</tr>
														<tr>
													<td>
														10
													</td>
													<td >
														<span>系统邮件</span>
													</td>
													<td>
														<span>罗密欧的邮箱</span>
													</td>
													<td >
														<span>2017/8/16 19:24:04</span>
													</td>
													
													<td>
														<span class="label label-primary  change-color">失效</span>
													</td>
													
													<td>
														<a title="修改" href="##" class="label label-primary"><span class="glyphicon glyphicon-edit"></span> 修改</a>
														<a title="删除" href="##" class="label label-primary label-danger"><span class="glyphicon glyphicon-remove"></span> 删除</a>
														
													</td>
												</tr>
														<tr>
													<td>
														10
													</td>
													<td >
														<span>系统邮件</span>
													</td>
													<td>
														<span>罗密欧的邮箱</span>
													</td>
													<td >
														<span>2017/8/16 19:24:04</span>
													</td>
													
													<td>
														<span class="label label-primary  change-color">有效</span>
													</td>
													
													<td>
														<a title="修改" href="##" class="label label-primary"><span class="glyphicon glyphicon-edit"></span> 修改</a>
														<a title="删除" href="##" class="label label-primary label-danger"><span class="glyphicon glyphicon-remove"></span> 删除</a>
														
													</td>
												</tr>
											</table>
									</div>
								</div>
								<!--盒子尾-->
								<div class="box-footer no-padding" style="margin-top: -20px;">
									<div style="padding: 5px;">
										<div id="page" style="background:#fff;border:0px;margin-top:0px;padding:2px;height: 25px;">
											<div style="width: 40%; float: left;">
												<div class="pageInfo" style="margin-left: 5px;">
													共<span>3</span>条 | 每页<span>20</span>条 | 共<span>1</span>页
												</div>
											</div>
											<div style="width: 60%; float: left;">
												<div class="pageOperation">
													<a class="btn btn-sm btn-default no-padding" style="width:30px;height: 20px;">
														<span class="glyphicon glyphicon-backward"></span>
													</a>
													<a class="btn btn-sm btn-default no-padding" style="width:30px;height: 20px;">
														<span class="glyphicon glyphicon-triangle-left"></span>
													</a>
													<a disabled="disabled" class="btn btn-default no-padding" style="width:30px;height: 20px;">
														1
													</a>
													<a class="btn btn-sm btn-default no-padding" style="width:30px;height: 20px;">
														<span class="glyphicon glyphicon-triangle-right"></span>
													</a>
													<a class="btn btn-sm btn-default no-padding" style="width:30px;height: 20px;">
														<span class="glyphicon glyphicon-forward"></span>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			 
			<!-- 新增账号-->
			
			<div class="row outside col-lg-9 xz" style="display: none;">
		<div class="box-header">
				<div class="row">
					<div class="col-md-2">
						<h1 style="font-size:24px;margin: 0;" class="">账号管理</h1>
					</div>
					<div class="col-md-10 text-right right-me">
						<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
						>
						<a disabled="disabled">账号管理</a>
					</div>
				</div>
		<div class="box">
			<form action="" method="post" class="form">
				<div class="box-header mar-top">
					<a class="btn btn-sm label-back">
						<span class="glyphicon glyphicon-chevron-left" onclick="window.history.back();"></span>
						返回
					</a>
				</div>
				
				<div class="box-body">
					<div class="row">
						<div class="col-md-6 form-group">
							<label class="control-label">
							<span>类型</span>
						</label>
							<select class="form-control">
								<option value="0">系统邮件</option>
								<option value="1">公司邮件</option>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">状态</label>
							<select class="form-control">
								<option value="0">有效</option>
								<option value="1">无效</option>
							</select>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6 form-group">
							
						<label class="control-label">名称</label>
						
							<input name="accountName" type="text" id="account_Name" class="form-control"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">发件昵称</label>
							<input name="accountName2" type="text" id="account_Name2" class="form-control"/>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6 form-group">
							<label class="control-label">邮件账号</label>
							<input class="form-control mail"/>
						</div>
						<div class="col-md-6 form-group" style="position: relative;">
							<label class="control-label">授权码</label>
							<input class="form-control"/>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6 form-group">
							<label class="control-label">备注</label>
							<textarea class="form-control text"></textarea>
						</div>
					</div>
				</div>

				<div class="box-footer foot">
					<input class="btn btn-primary" class="save" type="submit" value="保存" />
					<input class="btn btn-default active" class="cancel" type="submit" value="取消" onclick="window.history.back();" />
				</div>
			</form>
		</div>
	</div>
