
		
		<script type="text/javascript" src="js/common/iconfont.js" ></script>
		<script type="text/javascript" src="js/mail/mail.js" ></script>
		<link rel="stylesheet" type="text/css" href="css/common/box.css" />
		<link rel="stylesheet" href="css/common/iconfont.css" />
		<link rel="stylesheet" href="css/common/checkbox.css" />
		<link rel="stylesheet" href="css/mail/mail.css" />
		
		<div class="row outside">
			<div class="container">
				<div class="row">
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
						<a class="btn btn-primary" href="##" style="width: 100%;margin-bottom: 20px;">
							<span class="glyphicon glyphicon-pencil"></span> 写信
						</a>
						<div class="bgc-w box box-solid">
							<div class="box-header">
								<h3 class="box-title">文件夹</h3>
								<span class="btn btn-xs btn-default pull-right des mm" >
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
					<div class="col-md-9">
						<div class="bgc-w box box-primary">
							<!--盒子头-->
							<div class="box-header">
								<h3 class="box-title">最近</h3>
								<div class="box-tools">
									<div class="input-group" style="width: 150px;">
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
												<td >
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
													<a title="查看" href="##" class="label label-primary"><span class="glyphicon glyphicon-search"></span> 查看</a>
													
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
												<td >
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
													<a title="查看" href="##" class="label label-primary"><span class="glyphicon glyphicon-search"></span> 查看</a>
													
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
					</div>
				</div>
			</div>
	