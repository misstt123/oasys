
	
		<script type="text/javascript" src="bootstrap/js/jquery-1.12.4.js"></script>
		<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
		<script charset="utf-8" src="kindeditor/kindeditor-min.js"></script>
		<script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
		<script type="text/javascript" src="js/mail/addmail.js" ></script>
		<link rel="stylesheet" href="kindeditor/themes/default/default.css" />
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="css/commoc/box.css" />
		<link rel="stylesheet" href="css/common/tanchuang.css" />
		<link rel="stylesheet" href="css/common/checkbox.css" />
		<link rel="stylesheet" href="css/mail/addmail.css" />

		<div class="outside col-md-9">
			<div class="container">
				<div class="top">
					<label class="la">写信</label>
					<button type="button" class="btn btn-xs btn-primary"><span class="glyphicon glyphicon-chevron-down ">展开更多</span></button>
				</div>
				<div class="page-header"></div>
				<div id="MoreDiv">
					<div class="form-group">
						<select name="ctl00$cphMain$ddlType" id="ctl00_cphMain_ddlType" class="form-control select2">
							<option value="0">邮件</option>
							<option value="1">通知</option>
							<option value="2">公告</option>
						</select>
					</div>
					<div class="form-group">
						<select name="ctl00$cphMain$ddlStatus" id="ctl00_cphMain_ddlStatus" class="form-control select2">
							<option value="0">一般</option>
							<option value="1">重要</option>
							<option value="2">紧急</option>
						</select>
					</div>
					<div class="form-group">
						<select name="ctl00$cphMain$ddlAccount" id="ctl00_cphMain_ddlAccount" class="form-control select2">
							<option value="0">内部邮件</option>
							<option value="1">客户询问信</option>
							<option value="2">朱丽叶的邮箱</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<input name="ctl00$cphMain$txtReceiver" type="text" id="ctl00_cphMain_txtReceiver" style="background-color: #fff;" class="form-control" disabled="disabled" placeholder="收件人：" />
					<div class="reciver">
						<span class="label label-success glyphicon glyphicon-plus" data-toggle="modal" data-target="#myModal">通讯录</span>
					</div>
				</div>

				<div class="form-group">
					<input name="ctl00$cphMain$txtSubject" type="text" id="ctl00_cphMain_txtSubject" class="form-control" placeholder="主题：" />
				</div>

				<div class="form-group">
					<form id="ss">
						<textarea name="content" style="width:770px;height:300px;visibility:hidden;font-size: 20px;"></textarea>
					</form>
				</div>

				<div class="form-group">
					<div class="btn btn-default ">
						<span class="glyphicon glyphicon-paperclip">增加附件</span>
						<input type="file" name="ctl00$cphMain$fuAttachment" id="ctl00_cphMain_fuAttachment" />
					</div>
					<p class="help-block">5MB以内</p>
				</div>

				<div class="page-header"></div>

				<div class="pull-left left1">
					<a id="ctl00_cphMain_lnbDiscard" class="btn btn-default"><i class="glyphicon glyphicon-remove">放弃</i></a>
				</div>
				<div class="pull-right right1 bottom1">
					<a id="ctl00_cphMain_lnbDraft" class="btn btn-default"><i class="glyphicon glyphicon-pencil">存草稿</i></a>
					<a id="ctl00_cphMain_lnbSend" class="btn btn-primary"><i class="glyphicon glyphicon-envelope">发送</i></a>
				</div>
			</div>
		</div>
		
		
		<!-- 接收人弹窗-->
		<div class="modal fade" id="myModal" tabindex="-1">

			<!--第二步，窗口声明-->
			<div class="modal-dialog modal-lg">
				<!--第三步、内容区的声明-->
				<div class="modal-content" style="background: #F9F9F9;">
					<div class="modal-1">

						<div class="modal-2">

							<div class="modal-header" style="margin:10px;">
								<button class="close" data-dismiss="modal" style="display:block;background-color: black; margin:-90px -82px 0 0;
						border-radius:60%;"><span class="glyphicon glyphicon-remove-circle"style="color:white;font-size: 30px;" ></span></button>
								<div class="row">
									<div class="col-xs-12" style="height:30px;margin:10px 0px;">

										<h4 style="float:left;">
                      			<a class="btn btn-success glyphicon glyphicon-plus btn-sm"  href="##" onclick="addvalue()"> 新增接收人</a>
                      			<a class="btn btn-success glyphicon glyphicon-plus btn-sm"  href="##" onclick="addvalue2()"> 
                      				追加接收人</a>
                  			</h4>

										<div class="input-group">
											<input type="text" class="form-control input-sm pull-right" placeholder="查找..." />
											<div class="input-group-btn" style="top:-1px;">
												<a class="btn btn-sm btn-default glyphicon glyphicon-search" href=""></a>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="modal-body" style="margin:10px;">
								<table class="table  table-hover  container-fluid">
									<tr class="row">
										<th class=" col-xs-2">
											<span class="labels"><label><input id="checkedAll" type="checkbox"><i>✓</i></label></span>
										</th>
										<th class=" col-xs-2 b">部门</th>
										<th class=" col-xs-2 b">真实姓名 </th>
										<th class="col-xs-2 b">用户名</th>
										<th class="col-xs-2 b">角色</th>
										<th class=" col-xs-2">电话</th>
									</tr>
									<tr class="row">
										<th class=" col-xs-2">
											<span class="labels"><label><input name="id" type="checkbox"><i>✓</i></label></span>
										</th>
										<th class="col-xs-2">部门</th>
										<th class=" col-xs-2">真实姓名 </th>
										<th class="col-xs-2">用户名</th>
										<th class=" col-xs-2">角色</th>
										<th class=" col-xs-2">电话</th>

									</tr>
									<tr class="row">

										<th class=" col-xs-2">
											<span class="labels"><label><input name="id" type="checkbox"><i>✓</i></label></span>
										</th>
										<th class=" col-xs-2">部门</th>
										<th class=" col-xs-2">真实姓名 </th>
										<th class=" col-xs-2">用户名</th>
										<th class=" col-xs-2">角色</th>
										<th class=" col-xs-2">电话</th>

									</tr>
									<tr class="row">

										<th class=" col-xs-2">
											<span class="labels"><label><input name="id" type="checkbox"><i>✓</i></label></span>
										</th>
										<th class=" col-xs-2">部门</th>
										<th class="col-xs-2">真实姓名 </th>
										<th class=" col-xs-2">用户名</th>
										<th class="col-xs-2">角色</th>
										<th class="col-xs-2">电话</th>

									</tr>
									<tr class="row">

										<th class=" col-xs-2">
											<span class="labels"><label><input name="id" type="checkbox"><i>✓</i></label></span>
										</th>
										<th class=" col-xs-2">部门</th>
										<th class="col-xs-2">真实姓名 </th>
										<th class=" col-xs-2">用户名</th>
										<th class="col-xs-2">角色</th>
										<th class="col-xs-2">电话</th>

									</tr>
								</table>
							
								<div class="box-footer no-padding" style="margin-top: -20px;background: #FAFAFA;border-top: solid 1px #F5F5F5;">
									<div style="padding: 5px;">
										<div id="page" style="background:#fff;border:0px;margin-top:0px;padding:2px;height: 25px;">
											<div style="width: 40%; float: left;">
												<div class="pageInfo" style="margin-left: 5px;">
													共<span>2</span>条 | 每页<span>20</span>条 | 共<span>1</span>页
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
		</div>
