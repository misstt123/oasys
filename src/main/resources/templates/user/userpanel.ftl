

<script type="text/javascript" src="js/common/iconfont.js"></script>
<link rel="stylesheet" href="css/common/iconfont.css" />
<link rel="stylesheet" href="css/common/checkbox.css" />
<link rel="stylesheet" href="css/user/userpanel.css" />
<style type="text/css">
.imgs {
	display: block;
	width: 100px;
	height: 100px;
	margin-left: 83px;
}

.list-group li {
	margin-bottom: 10px;
}

.pa {
	margin-top: 12px;
	margin-bottom: 10px;
}

.nav-tabs-custom {
	background-color: #fff;
}
</style>

<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">用户面板</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">用户面板</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-3">

		<div class="bgc-w box box-solid " style="border-top: 3px solid blue;">
			<div class="box-header ">
				<span class="imgs"><img id="ctl00_cphMain_imgPortrait"
					class="profile-user-img img-responsive img-circle"
					src="images/gaici.jpg" /></span>
				<h3 class="profile-username text-center">
					<span id="ctl00_cphMain_lblFullName">盖茨</span>
				</h3>
				<p class="text-muted text-center">
					<span id="ctl00_cphMain_lblPosition">CEO</span>（<span
						id="ctl00_cphMain_lblDepartment">总公司</span>）
				</p>
				<hr class="pa" />

				<ul class="list-group ">
					<li class=""><b>我的消息</b> <a href="##" class="pull-right"><span
							id="ctl00_cphMain_lblMsgCount">0</span></a></li>
					<hr class="pa" />
					<li class=""><b>我的邮件</b> <a href="##" class="pull-right"><span
							id="ctl00_cphMain_lblMailCount">0</span></a></li>
					<hr class="pa" />
				</ul>
				<a href="##" class="btn btn-primary btn-block fancybox" title="写便签"><b><i
						class="glyphicon glyphicon-pushpin"></i> 写便签</b></a>
			</div>

		</div>

		<div class="bgc-w box box-solid" style="border-top: 3px solid blue;">
			<div class="box-header">
				<h3 class="box-title">基本资料</h3>
			</div>
			<div class="box-body">
				<strong><i class="glyphicon glyphicon-book"></i> 学历</strong>
				<p class="text-muted">
					<span id="ctl00_cphMain_lblEducation">哈佛大学 本科</span>
				</p>

				<hr />

				<strong><i class="glyphicon glyphicon-earphone"></i> 手机</strong>
				<p class="text-muted">
					<span id="ctl00_cphMain_lblPhone">13800138000</span>
				</p>

				<hr />

				<strong><i class="glyphicon glyphicon-map-marker"></i> 地址</strong>
				<p class="text-muted">
					<span id="ctl00_cphMain_lblAddress">广东省广州市天河区</span>
				</p>

				<hr />

				<strong><i class="glyphicon glyphicon-pencil"></i> 签名</strong>
				<p class="text-muted">
					<span id="ctl00_cphMain_lblNote">天生我材必有用</span>
				</p>
			</div>
		</div>
	</div>
	<div class="col-md-9">


		<div class=" nav-tabs-custom">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#memo" data-toggle="tab">我的便签</a></li>
				<li><a href="#settings" data-toggle="tab">个人设置</a></li>
			</ul>


			<div class="tab-content">

				<div class="active tab-pane" id="memo">

					<div class="box-body">
						
							<div>
								<table class="table1" cellspacing="0" border="0"
									id="ctl00_cphMain_GridView1"
									style="border-width: 0px; border-collapse: collapse; margin-bottom: 0px; width: 100%;">
									<tr>
										<td>

											<div class="post"
												style="border: dashed 1px #eee; padding: 10px 10px 0 10px; background: #FFFFE0; margin: 0 5px 10px 5px;">
												<div class="user-block">

													<a href="#"><span
														id="ctl00_cphMain_GridView1_ctl02_lblMemoTitle"></span></a> <a
														onclick="{return confirm(&#39;删除该记录将不能恢复，确定删除吗？&#39;);};"
														id="ctl00_cphMain_GridView1_ctl02_gvDelete" title="删除"
														class="pull-right btn-box-tool" href="##"> <i
														class='glyphicon glyphicon-remove-sign'></i></a> <br /> <span
														id="ctl00_cphMain_GridView1_ctl02_lblModifyDate"
														style="font-size: 8pt; color: #999;">2017-8-10
														9:35:42</span>
												</div>
												<p>
													<span id="ctl00_cphMain_GridView1_ctl02_lblMemoDescription">更多产品请访问魔方动力官方网站：http://www.mojocube.com/</span>
												</p>
												<ul class="list-inline">
													<li>
														<!--<a id="ctl00_cphMain_GridView1_ctl02_gvStar" title="标记星标" href="javascript:__doPostBack(&#39;ctl00$cphMain$GridView1$ctl02$gvStar&#39;,&#39;&#39;)">
																			<i class="glyphicon glyphicon-edit"></i></a>-->
													</li>
													<li class="pull-right"><a
														id="ctl00_cphMain_GridView1_ctl02_gvEdit" title="便签"
														class="fancybox link-black text-sm" data-toggle="modal"
														href="#editModal"> <i class="glyphicon glyphicon-edit"></i>
															修改
													</a></li>
												</ul>
											</div>

										</td>
									</tr>
									<tr>
										<td>

											<div class="post"
												style="border: dashed 1px #eee; padding: 10px 10px 0 10px; background: #FFFFE0; margin: 0 5px 10px 5px;">
												<div class="user-block">

													<a href="#"><span
														id="ctl00_cphMain_GridView1_ctl03_lblMemoTitle"></span></a> <a
														onclick="{return confirm(&#39;删除该记录将不能恢复，确定删除吗？&#39;);};"
														id="ctl00_cphMain_GridView1_ctl03_gvDelete" title="删除"
														class="pull-right btn-box-tool"
														href="javascript:__doPostBack(&#39;ctl00$cphMain$GridView1$ctl03$gvDelete&#39;,&#39;&#39;)">
														<i class='glyphicon glyphicon-remove-sign'></i>
													</a> <br /> <span
														id="ctl00_cphMain_GridView1_ctl03_lblModifyDate"
														style="font-size: 8pt; color: #999;">2017-2-21
														11:02:44</span>
												</div>
												<p>
													<span id="ctl00_cphMain_GridView1_ctl03_lblMemoDescription">如需要获得更多功能和支持，请到魔方动力淘宝旗舰店购买正版软件，网址：https://520mc.taobao.com/</span>
												</p>
												<ul class="list-inline">
													<li>
														<!--<a id="ctl00_cphMain_GridView1_ctl03_gvStar" title="标记星标" href="javascript:__doPostBack(&#39;ctl00$cphMain$GridView1$ctl03$gvStar&#39;,&#39;&#39;)"><i class="fa fa-star-o text-yellow"></i></a>-->
													</li>
													<li class="pull-right"><a
														id="ctl00_cphMain_GridView1_ctl03_gvEdit" title="便签"
														class="fancybox link-black text-sm" data-toggle="modal"
														href="#editModal"> <i class="glyphicon glyphicon-edit"></i>
															修改
													</a></li>
												</ul>
											</div>

										</td>
									</tr>
								</table>
							</div>

						</div>
					
</div>	
				</div>


			</div>
			<!--盒子尾-->
			<div class="box-footer no-padding" style="margin-top: -20px;">
				<div style="padding: 5px;">
					<div id="page"
						style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
						<div style="width: 40%; float: left;">
							<div class="pageInfo" style="margin-left: 5px;">
								共<span>2</span>条 | 每页<span>20</span>条 | 共<span>1</span>页
							</div>
						</div>
						<div style="width: 60%; float: left;">
							<div class="pageOperation">
								<a class="btn btn-sm btn-default no-padding"
									style="width: 30px; height: 20px;"> <span
									class="glyphicon glyphicon-backward"></span>
								</a> <a class="btn btn-sm btn-default no-padding"
									style="width: 30px; height: 20px;"> <span
									class="glyphicon glyphicon-triangle-left"></span>
								</a> <a disabled="disabled" class="btn btn-default no-padding"
									style="width: 30px; height: 20px;"> 1 </a> <a
									class="btn btn-sm btn-default no-padding"
									style="width: 30px; height: 20px;"> <span
									class="glyphicon glyphicon-triangle-right"></span>
								</a> <a class="btn btn-sm btn-default no-padding"
									style="width: 30px; height: 20px;"> <span
									class="glyphicon glyphicon-forward"></span>
								</a>
							</div>
						</div>
					</div>
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

							<div class="modal-header" style="margin: 10px;">
								<button class="close close2" data-dismiss="modal"
									style="display: block; background-color: black; margin: -90px -82px 0 0; border-radius: 60%;">
									<span class="glyphicon glyphicon-remove-circle"
										style="color: white; font-size: 30px;"></span>
								</button>
								<div class="row">
									<div class="col-xs-12" style="height: 30px; margin: 10px 0px;">

										<h4 style="float: left;">
											<a class="btn btn-success glyphicon glyphicon-plus btn-sm"
												href="##" onclick="addvalue()"> 新增接收人</a> <a
												class="btn btn-success glyphicon glyphicon-plus btn-sm"
												href="##" onclick="addvalue2()"> 追加接收人</a>
										</h4>

										<div class="input-group">
											<input type="text" class="form-control input-sm pull-right"
												placeholder="查找..." />
											<div class="input-group-btn" style="top: -1px;">
												<a class="btn btn-sm btn-default glyphicon glyphicon-search"
													href=""></a>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="modal-body" style="margin: 10px;">
								<table class="table  table-hover  container-fluid">
									<tr class="row">
										<th class=" col-xs-2"><span class="labels"><label><input
													id="checkedAll" type="checkbox"><i>✓</i></label></span></th>
										<th class=" col-xs-2 b">部门</th>
										<th class=" col-xs-2 b">真实姓名</th>
										<th class="col-xs-2 b">用户名</th>
										<th class="col-xs-2 b">角色</th>
										<th class=" col-xs-2">电话</th>
									</tr>
									<tr class="row">
										<th class=" col-xs-2"><span class="labels"><label><input
													name="id" type="checkbox"><i>✓</i></label></span></th>
										<th class="col-xs-2">部门</th>
										<th class=" col-xs-2">真实姓名</th>
										<th class="col-xs-2">用户名</th>
										<th class=" col-xs-2">角色</th>
										<th class=" col-xs-2">电话</th>

									</tr>
									<tr class="row">

										<th class=" col-xs-2"><span class="labels"><label><input
													name="id" type="checkbox"><i>✓</i></label></span></th>
										<th class=" col-xs-2">部门</th>
										<th class=" col-xs-2">真实姓名</th>
										<th class=" col-xs-2">用户名</th>
										<th class=" col-xs-2">角色</th>
										<th class=" col-xs-2">电话</th>

									</tr>
									<tr class="row">

										<th class=" col-xs-2"><span class="labels"><label><input
													name="id" type="checkbox"><i>✓</i></label></span></th>
										<th class=" col-xs-2">部门</th>
										<th class="col-xs-2">真实姓名</th>
										<th class=" col-xs-2">用户名</th>
										<th class="col-xs-2">角色</th>
										<th class="col-xs-2">电话</th>

									</tr>
									<tr class="row">

										<th class=" col-xs-2"><span class="labels"><label><input
													name="id" type="checkbox"><i>✓</i></label></span></th>
										<th class=" col-xs-2">部门</th>
										<th class="col-xs-2">真实姓名</th>
										<th class=" col-xs-2">用户名</th>
										<th class="col-xs-2">角色</th>
										<th class="col-xs-2">电话</th>

									</tr>
								</table>

								<div class="box-footer no-padding"
									style="margin-top: -20px; background: #FAFAFA; border-top: solid 1px #F5F5F5;">
									<div style="padding: 5px;">
										<div id="page"
											style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
											<div style="width: 40%; float: left;">
												<div class="pageInfo" style="margin-left: 5px;">
													共<span>2</span>条 | 每页<span>20</span>条 | 共<span>1</span>页
												</div>
											</div>
											<div style="width: 60%; float: left;">
												<div class="pageOperation">
													<a class="btn btn-sm btn-default no-padding"
														style="width: 30px; height: 20px;"> <span
														class="glyphicon glyphicon-backward"></span>
													</a> <a class="btn btn-sm btn-default no-padding"
														style="width: 30px; height: 20px;"> <span
														class="glyphicon glyphicon-triangle-left"></span>
													</a> <a disabled="disabled" class="btn btn-default no-padding"
														style="width: 30px; height: 20px;"> 1 </a> <a
														class="btn btn-sm btn-default no-padding"
														style="width: 30px; height: 20px;"> <span
														class="glyphicon glyphicon-triangle-right"></span>
													</a> <a class="btn btn-sm btn-default no-padding"
														style="width: 30px; height: 20px;"> <span
														class="glyphicon glyphicon-forward"></span>
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