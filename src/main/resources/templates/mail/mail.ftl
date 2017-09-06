
		
		<script type="text/javascript" src="js/common/iconfont.js" ></script>
		<script charset="utf-8" src="plugins/kindeditor/kindeditor-min.js"></script>
		<script charset="utf-8" src="plugins/kindeditor/lang/zh_CN.js"></script>
		<script type="text/javascript" src="js/mail/mail.js" ></script>
		<link rel="stylesheet" href="plugins/kindeditor/themes/default/default.css" />
		<link rel="stylesheet" href="css/common/iconfont.css" />
		<link rel="stylesheet" href="css/common/checkbox.css" />
		<link rel="stylesheet" href="css/mail/mail.css" />
		<link rel="stylesheet" href="css/common/tanchuang.css" />
	<script>
			$(function(){
				
				$(".write").click(function(){
					$(".set").css("display","block");
					$(".yuan").css("display","none");
					$(".outsides").css("display","none");
				})
				
				$(".nav li,#ctl00_cphMain_lnbDiscard,.fa-back").click(function(){
					$(".yuan").css("display","block");
					$(".set").css("display","none");
					$(".outsides").css("display","none");
				})
				
				$(".lab").click(function(){
					$(".outsides").css("display","block");
					$(".set").css("display","none");
					$(".yuan").css("display","none");
				})
			})
		</script>	
	<!-- <div class="row outside">
	<div class="container"> -->
		<div class="row" style="padding-top:10px;">
			<div class="col-md-2">
				<h1 style="font-size:24px;margin:0;" class="">邮件管理</h1>
			</div>
			<div class="col-md-10 text-right">
				<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
				>
				<a disabled="disabled">邮件管理</a>
			</div>
		</div>
		<div class="row" style="padding-top: 15px;">
			<div class="col-md-3">
				<a class="btn btn-primary write" href="##" style="width: 100%;margin-bottom: 20px;">
					<span class="glyphicon glyphicon-pencil"></span> 写信
				</a>
				<div class="bgc-w box box-solid">
					<div class="box-header">
						<h3 class="box-title">文件夹</h3>
						<span class="btn btn-xs btn-default pull-right des mm">
									<i class="glyphicon glyphicon-minus"></i>
								</span>
					</div>
					<ul class="nav nav-pills nav-stacked files ">

						<li style="border-left: 3px solid blue;">
							<span class="glyphicon glyphicon-inbox le"> 收件箱</span>
							<span class="pull-right uncheck"><i class="btn btn-xs btn-primary">1</i></span>
						</li>
						<li>
							<span class="glyphicon glyphicon-envelope le"> 发件箱</span>
							<span class="pull-right uncheck"><i class="btn btn-xs btn-primary">1</i></span>
						</li>
						<li>
							<span class="glyphicon glyphicon-list-alt le"> 草稿箱</span>
						</li>
						<li>
							<span class="glyphicon glyphicon-filter le"> 垃圾箱</span>
						</li>
						<li>
							<span class="glyphicon glyphicon-trash le"> 回收站</span>
						</li>
					</ul>
				</div>

				<div class="bgc-w box box-solid">
					<div class="box-header">
						<h3 class="box-title">类型</h3>
						<span class="btn btn-xs btn-default pull-right des">
									<i class="glyphicon glyphicon-minus"></i>
								</span>
					</div>
					<ul class="nav nav-pills nav-stacked fff">
						<li>

							<svg class="icon le" aria-hidden="true">
								<use xlink:href="#icon-kongxinquan"></use>
							</svg>&nbsp;&nbsp;&nbsp;邮件
						</li>
						<li>

							<svg class="icon le" aria-hidden="true">
								<use xlink:href="#icon-kongxinquan"></use>
							</svg>&nbsp;&nbsp;&nbsp;通知
						</li>
						<li>

							<svg class="icon le" aria-hidden="true" style="color: red;">
								<use xlink:href="#icon-kongxinquan"></use>
							</svg>&nbsp;&nbsp;&nbsp;公告
						</li>
					</ul>
				</div>
			</div>
			<div class="col-md-9 yuan">
				<div class="bgc-w box box-primary">
					<!--盒子头-->
					<div class="box-header">
						<h3 class="box-title">最近</h3>
						<div class="box-tools">
							<div class="input-group" style="width: 150px; margin-top:0px;">
								<input type="text" class="form-control input-sm" placeholder="查找..." />
								<div class="input-group-btn">
									<a class="btn btn-sm btn-default"><span class="glyphicon glyphicon-search"></span></a>
								</div>
							</div>
						</div>
					</div>
					<!--盒子身体-->
					<div class="box-body no-padding">
						<div style="padding: 5px;">
							<a class="btn btn-sm btn-default bac chec" href="" title="全选/反选"><span class="glyphicon glyphicon-unchecked"></span></a>
							<div class="btn-group">
								<a class="btn btn-sm btn-default bac" href="" title="删除"><span class="glyphicon glyphicon-trash"></span></a>
								<a class="btn btn-sm btn-default bac" href="" title="标为已读"><span class="glyphicon glyphicon-eye-open"></a>
										<a class="btn btn-sm btn-default bac" href="" title="星标"><span class="glyphicon glyphicon-star"></a>
									</div>
									<a class="btn btn-sm btn-default bac" href="" title="刷新"><span class="glyphicon glyphicon-refresh"></span></a>
							</div>
							<div class="table-responsive">
								<table class="table table-hover table-striped">
									<tr>
										<th scope="col">选择</th>
										<th scope="col">&nbsp;</th>
										<th scope="col">类型</th>
										<th scope="col">收件人</th>
										<th scope="col">主题</th>
										<th scope="col">时间</th>
										<th scope="col">附件</th>
										<th scope="col">状态</th>
										<th scope="col">操作</th>
									</tr>
									<tr>
										<td style="text-align: center;">
											<span class="labels"><label><input name="items" type="checkbox"><i>✓</i></label></span>
										</td>
										<td class="em">
											<span class="glyphicon glyphicon-star-empty" style="width: 25px;"></span>
										</td>
										<td>
											<span>邮件</span>
										</td>
										<td>
											<span>朱丽叶；盖茨</span>
										</td>
										<td>
											<span>主题格</span>
										</td>
										<td>
											<span>2017/8/16 19:24:04</span>
										</td>
										<td>
											<span></span>
										</td>
										<td>
											<div class="label label-info">一般</div>
										</td>
										<td>
											<a title="查看" href="##" class="label xiugai lab"><span class="glyphicon glyphicon-search"></span> 查看</a>

										</td>
									</tr>
									<tr>
										<td style="text-align: center;">
											<span class="labels"><label><input name="items" type="checkbox"><i>✓</i></label></span>
										</td>
										<td class="em">
											<span class="glyphicon glyphicon-star-empty" style="width: 25px;"></span>
										</td>
										<td>
											<span>邮件</span>
										</td>
										<td>
											<span>朱丽叶；盖茨</span>
										</td>
										<td>
											<span>主题格</span>
										</td>
										<td>
											<span>2017/8/16 19:24:04</span>
										</td>
										<td>
											<span></span>
										</td>
										<td>
											<div class="label label-info">一般</div>
										</td>
										<td>
											<a title="查看" href="##" class="label xiugai lab"><span class="glyphicon glyphicon-search"></span> 查看</a>

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

				<!--  写信-->
				<div class="col-md-9 set" style="display: none;">
					<div class="bgc-w box box-primary" style="min-height: 613px;">
						<!--盒子头-->
						<div class="box-header">
							<h3 class="box-title">写信</h3>
							<div class="box-tools">
								<div class="pull-right top">
									<button type="button" class="btn btn-xs btn-primary"><span class="glyphicon glyphicon-chevron-down ">展开更多</span></button>
								</div>
							</div>
						</div>
						<!--盒子身体-->
						<div class="box-body">

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
									<textarea name="content" style="width:899px;height:300px;visibility:hidden;font-size: 20px;"></textarea>
								</form>
							</div>

							<div class="form-group">
								<div class="btn btn-default ">
									<span class="glyphicon glyphicon-paperclip">增加附件</span>
									<input type="file" name="ctl00$cphMain$fuAttachment" id="ctl00_cphMain_fuAttachment" />
								</div>
								<p class="help-block">5MB以内</p>
							</div>

						</div>
						<!--盒子尾-->
						<div class="box-footer foots">
							<div class="left1">
								<a id="ctl00_cphMain_lnbDiscard" class="btn btn-default"><i class="glyphicon glyphicon-remove">放弃</i></a>
							</div>
							<div class="pull-right right1 ">
								<a id="ctl00_cphMain_lnbDraft" class="btn btn-default"><i class="glyphicon glyphicon-pencil">存草稿</i></a>
								<a id="ctl00_cphMain_lnbSend" class="btn btn-primary"><i class="glyphicon glyphicon-envelope">发送</i></a>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 查看邮件 -->
				<div class="outsides col-md-9">

			<label class="font">查看</label>

			<div class="page-header"></div>
			<div class="box-body">
				<div class="row">
					<div class="box-body">
						<div class=" mailbox-read-info">
							<h3>
									<span id="ctl00_cphMain_lblTitle">主题： wrgqr</span></h3>
							<h5 class="fonts">
									<span id="ctl00_cphMain_lblFrom" class="mailbox-read-time">发送：<i>罗密欧</i> &nbsp;&nbsp;接收：<i>朱丽叶、盖茨</i></span>
									<span id="ctl00_cphMain_lblDate" class="mailbox-read-time pull-right">2017/8/19 16:12:13</span>
								</h5>
						</div>
						<div class="mailbox-read-message">
							<span id="ctl00_cphMain_lblDescription">邮件描述：</span>
							<span id="ctl00_cphMain_lblFeedback">
									<div>
										<p>让太行山eyjr74k</p>
									</div>
							</span>

						</div>
					</div>

				</div>
			</div>

			<div class="box-footer foots">
				<a class="btn btn-default fault fa-back"  href="javascript:history.back();"><span class="glyphicon glyphicon-chevron-left"></span> 返回</a>
				<div class="pull-right foot">
					<a class="btn btn-default fault"><span class="glyphicon glyphicon glyphicon-print"></span> 打印</a>
					<a class="btn btn-primary">
						<svg class="icon" aria-hidden="true" style="color:#fff;">
							<use xlink:href="#icon-huifu"></use>
						</svg> 回复
					</a>
					<a class="btn btn-primary"><span class="glyphicon glyphicon-share-alt"></span> 转发</a>
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
										<button class="close close2" data-dismiss="modal" style="display:block;background-color: black; margin:-90px -82px 0 0;
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

			</div>
	<!-- 	</div>
	</div> -->