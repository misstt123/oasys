<#include "/common/commoncss.ftl">
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
	list-style-type: none;
}

a {
	text-decoration: none !important;
}

.pa {
	margin-top: 12px;
	margin-bottom: 10px;
}

.nav-tabs-custom {
	background-color: #fff;
}

h1, h3 {
	font-family: 'Source Sans Pro', sans-serif;
}

.bo {
	margin-bottom: 12px;
}

.nav-tabs-custom>.nav-tabs>li:first-of-type {
	margin-left: 0;
}

.nav-tabs-custom>.nav-tabs>li.active {
	border-top-color: #3c8dbc;
}

.nav-tabs-custom>.nav-tabs>li {
	border-top: 3px solid transparent;
	margin-bottom: -2px;
	margin-right: 5px;
}

.nav-tabs-custom>.nav-tabs>li:first-of-type.active>a {
	border-left-color: transparent;
}

.nav-tabs-custom>.nav-tabs>li>a, .nav-tabs-custom>.nav-tabs>li>a:hover {
	background: transparent;
	margin: 0;
	color:
}

.nav-tabs-custom>.nav-tabs>li>a:hover {
	color: #999;
}

.nav-tabs-custom>.nav-tabs>li.active>a, .nav-tabs-custom>.nav-tabs>li.active:hover>a
	{
	background-color: #fff;
	color: #444;
}

.nav-tabs-custom>.nav-tabs>li>a {
	color: #444;
	border-radius: 0;
}

.nav-tabs>li>a {
	margin-right: 2px;
	line-height: 1.42857143;
	border: 0px;
	border-radius: 4px 4px 0 0;
}
.list-inline li{
	display:block;
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
<div class="row" style="padding-top: 10px;">
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
	<div class="col-md-9" style="margin-bottom: 60px;">


		<div class=" nav-tabs-custom">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#memo" data-toggle="tab">我的便签</a></li>
				<li class="personset"><a href="#settings" data-toggle="tab" >个人设置</a></li>
			</ul>


			<div class="tab-content">

				<div class="active tab-pane" id="memo">

					<div class="box-body">

						<div class="bo">
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
											<a id="edit" title="便签" style="margin-top: -22px;"
													class="fancybox link-black text-sm pull-right" data-toggle="modal"
													href="#editModal"> <i class="glyphicon glyphicon-edit"></i>
														修改
												</a>
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
											
												
												<a id="edit" title="便签" style="margin-top: -22px;"
													class="fancybox link-black text-sm pull-right" data-toggle="modal"
													href="#editModal"> <i class="glyphicon glyphicon-edit"></i>
														修改
												</a>
												
											
										</div>

									</td>
								</tr>
							</table>
						</div>

					</div>
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
				
				<div class="tab-pane" id="settings">
					<div class="box-body">
						<div class="row">

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label1">用户名</span></label> <input
									name="ctl00$cphMain$txtName" type="text" value="admin"
									id="ctl00_cphMain_txtName" class="form-control"
									onfocus="this.blur()" />
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label2">电话</span></label> <input
									name="ctl00$cphMain$txtPhone1" type="text" value="13800138000"
									id="ctl00_cphMain_txtPhone1" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label3">真实姓名</span></label> <input
									name="ctl00$cphMain$txtFullName" type="text" value="盖茨"
									id="ctl00_cphMain_txtFullName" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label4">昵称</span></label> <input
									name="ctl00$cphMain$txtNickName" type="text"
									value="Administrator" id="ctl00_cphMain_txtNickName"
									class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label5">Email</span></label> <input
									name="ctl00$cphMain$txtEmail1" type="text"
									value="gates@mojocube.com" id="ctl00_cphMain_txtEmail1"
									class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label10">地址</span></label> <input
									name="ctl00$cphMain$txtAddress1" type="text" value="广东省广州市天河区"
									id="ctl00_cphMain_txtAddress1" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label6">学历</span></label> <input
									name="ctl00$cphMain$txtEducation" type="text" value="本科"
									id="ctl00_cphMain_txtEducation" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label7">毕业院校</span></label> <input
									name="ctl00$cphMain$txtSchool" type="text" value="哈佛大学"
									id="ctl00_cphMain_txtSchool" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label8">身份证号</span></label> <input
									name="ctl00$cphMain$txtIDNumber" type="text"
									value="441891198801082910" id="ctl00_cphMain_txtIDNumber"
									class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label9">银行账号</span></label> <input
									name="ctl00$cphMain$txtBankAccount" type="text"
									value="（工行）88088800008020" id="ctl00_cphMain_txtBankAccount"
									class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label16">性别</span></label> <select
									name="ctl00$cphMain$ddlSex" id="ctl00_cphMain_ddlSex"
									class="form-control select2">
									<option selected="selected" value="0">男</option>
									<option value="1">女</option>

								</select>
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label15">皮肤</span></label> <select
									name="ctl00$cphMain$ddlSkin" id="ctl00_cphMain_ddlSkin"
									class="form-control select2">
									<option selected="selected" value="blue">经典蓝</option>
									<option value="green">青草绿</option>
									<option value="red">中国红</option>
									<option value="yellow">商务黄</option>
									<option value="purple">高贵紫</option>

								</select>
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label14">生日</span></label> <input
									name="ctl00$cphMain$txtBirthday" type="text" value="1983-06-11"
									id="ctl00_cphMain_txtBirthday" class="form-control"
									onfocus="WdatePicker({dateFmt:&#39;yyyy-MM-dd&#39;})" />
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label13">签名</span></label> <input
									name="ctl00$cphMain$txtNote" type="text" value="天生我材必有用"
									id="ctl00_cphMain_txtNote" class="form-control" />
							</div>

						</div>

						<div class="row">

							<hr />

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label11">新的密码</span></label> <input
									name="ctl00$cphMain$txtPassword1" type="password"
									id="ctl00_cphMain_txtPassword1" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label12">确认密码</span></label> <input
									name="ctl00$cphMain$txtPassword2" type="password"
									id="ctl00_cphMain_txtPassword2" class="form-control" />
							</div>

						</div>

						<div class="row">

							<hr />

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label17">头像</span></label>
								<div class="form-group">
									<div class="btn btn-default"
										style="position: relative; overflow: hidden;">
										<i class="glyphicon glyphicon-open"></i> 上传头像 <input
											type="file" name="file"
											style="opacity: 0; position: absolute; top: 0; right: 0; min-width: 100%; min-height: 100%;">
									</div>
									<p class="help-block">尺寸在512*512以内，大小在500KB以内</p>
								</div>
							</div>

						</div>

					</div>

					<div class="box-footer" style="position: relative; overflow: hidden;">
						<input type="submit" name="ctl00$cphMain$btnSave" value="保存"
							id="ctl00_cphMain_btnSave" class="btn btn-primary" />
					</div>

				</div>

			</div>
		</div>
	</div>
</div>
