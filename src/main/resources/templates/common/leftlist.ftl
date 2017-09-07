<div id="smallDiv"
	style="width: 3%; background: red; float: left; display: none;">
	<div
		style="background: #008d4c; ackground: #008d4c; text-align: center; height: 50px; padding-top: 7px;">
		<a href="#"><img src="images/logo_1.png" /></a>
	</div>
	<div class="list-left"
		style="width: 100%; background: rgb(34, 45, 50);">
		<div style="padding: 10px 0 20px 6px;">
			<img src="images/handsome.JPG" style="width:32px;height:32px;border-radius:50%;" />
		</div>
		<ul class="list-group">
			<li><a href="#"><span class="glyphicon glyphicon-asterisk"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-education"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-user"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-time"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-hourglass"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-bell"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-envelope"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-flag"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-calendar"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-plane"></span></a>
			</li>
			<li><a href="#"><span
					class="glyphicon glyphicon-folder-open"></span></a></li>
			<li><a href="#"><span class="glyphicon glyphicon-edit"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-earphone"></span></a>
			</li>
			<li><a href="#"><span class="glyphicon glyphicon-comment"></span></a>
			</li>
		</ul>
	</div>
</div>
<!--把最顶上左侧的logo，栅格系统分2份-->
<div class="col-lg-2 col-md-2 smallDiv"
	style="padding: 0; margin: 0; display: block;">
	<div style="background: #008d4c;" class="col-md-12">
		<a href="#" class="navbar-brand" style="padding: 8px 40px;"><img
			src="images/logo.png" /></a>
	</div>
	<div class="col-md-12 list-left" style="background: #222d32;height:845px">
		<div class="user-panel">
			<div class="pull-left">
				<img src="images/handsome.JPG" class="img-circle user-image-left" />
			</div>
			<div class="pull-left info">
				<p style="color: #fff; line-height: 1.5;">
					<span>罗祥</span><br> <small><span
						class="glyphicon glyphicon-record" style="color: #00a65a;">
					</span> 在线</small>
				</p>
			</div>
		</div>
		<div style="position: relative; margin-top: 20px;">
			<input type="text" placeholder="查找..." class="search-input" /> <span
				style="display: inline-block; height: 35px; width: 38px; background: red; position: absolute; text-align: center; line-height: 35px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; background: #374850;">
				<a href="#"><span class="glyphicon glyphicon-search"
					style="color: white;"></span></a>
			</span>
		</div>
		<div class="panel-group" id="accordion"
			style="margin-top: 10px; margin-left: -12px;">
			<div class="panel panel-default">

				<div class="panel-heading">
					<a class="open-menu" href="#collapseOne" data-toggle="collapse"
						data-parent="#accordion"> <span
						class="glyphicon glyphicon-asterisk"></span> <span>系统管理 </span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>
					</a>
				</div>
				<div id="collapseOne" class="panel-collapse collapse ">
					<ul>
						<li><a href="javascript:changepath('testsysmenu');"> <span class="glyphicon glyphicon-record"></span>
								<span>菜单管理</span>
						</a></li>
						<li><a href="javascript:changepath('testsystype');"> <span class="glyphicon glyphicon-record"></span>
								<span>类型管理</span>
						</a></li>
						<li><a href="javascript:changepath('testsysstatus');"> <span class="glyphicon glyphicon-record"></span>
								<span>状态管理</span>
						</a></li>
					</ul>
				</div>
				<!--第一个完-->

				<div class="panel-heading">
					<a class="open-menu" href="#collapseTwo" data-toggle="collapse"
						data-parent="#accordion"> <span
						class="glyphicon glyphicon-education"></span> <span>用户管理</span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>
					</a>
				</div>
				<div id="collapseTwo" class="panel-collapse collapse">
					<ul>
						<li><a href="javascript:changepath('deptmanage');"> <span class="glyphicon glyphicon-record"></span>
								<span>部门管理</span>
						</a></li>
						<li><a href="javascript:changepath('positionmanage');"> <span class="glyphicon glyphicon-record"></span>
								<span>职位管理</span>
						</a></li>
						<li><a href="javascript:changepath('usermanage');"> <span class="glyphicon glyphicon-record"></span>
								<span>用户管理</span>
						</a></li>
						<li><a href="javascript:changepath('userlogmanage');"> <span class="glyphicon glyphicon-record"></span>
								<span>在线用户</span>
						</a></li>
					</ul>
				</div>
				<!--第二部分完-->

				<div class="panel-heading">
					<a class="open-menu" href="#collapseThree" data-toggle="collapse"
						data-parent="#accordion"> <span
						class="glyphicon glyphicon-user"></span> <span>角色管理</span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>

					</a>
				</div>
				<div id="collapseThree" class="panel-collapse collapse">
					<ul>
						<li><a href="javascript:changepath('rolemanage');"> <span class="glyphicon glyphicon-record"></span>
								<span>角色列表</span>
						</a></li>
					</ul>
					</ul>
				</div>
				<!--第三部分完-->
				<!--第四部分-->
				<div class="panel-heading">
					<a class="open-menu" href="#collapsefour" data-toggle="collapse"
						data-parent="#accordion"> <span
						class="glyphicon glyphicon-time"></span> <span>考勤管理 </span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>

					</a>
				</div>
				<div id="collapsefour" class="panel-collapse collapse ">
					<ul>
						<li><a href="javascript:changepath('attendceatt');"> <span class="glyphicon glyphicon-record"></span>
								<span>考勤管理</span>
						</a></li>
						<li><a href="javascript:changepath('attendceweek');"> <span class="glyphicon glyphicon-record"></span>
								<span>考勤周报表</span>
						</a></li>
						<li><a href="javascript:changepath('attendcemonth');"> <span class="glyphicon glyphicon-record"></span>
								<span>考勤月报表</span>
						</a></li>
					</ul>
				</div>
				<!--第四个完-->

				<div class="panel-heading">
					<a class="open-menu" href="#collapsefive" data-toggle="collapse"
						data-parent="#accordion"> <span
						class="glyphicon glyphicon-hourglass"></span> <span>流程管理</span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>
					</a>
				</div>
				<div id="collapsefive" class="panel-collapse collapse">
					<ul>
						<li><a href="javascript:changepath('flowmanage');"> <span class="glyphicon glyphicon-record"></span>
								<span>流程管理</span>
						</a></li>
						<li><a href="#"> <span class="glyphicon glyphicon-record"></span>
								<span>流程审核</span>
						</a></li>
					</ul>
				</div>
				<!--第五部分完-->

				<div class="panel-heading">
					<a class="open-menu" href="#collapsesix" data-toggle="collapse"
						data-parent="#accordion"> <span
						class="glyphicon glyphicon-bell"></span> <span>公告通知</span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>
					</a>
				</div>
				<div id="collapsesix" class="panel-collapse collapse">
					<ul>
						<li><a href="javascript:changepath('infrommanage');"> <span class="glyphicon glyphicon-record"></span>
								<span>通知管理</span>
						</a></li>
						<li><a href=""> <span class="glyphicon glyphicon-record"></span>
								<span>通知列表</span>
						</a></li>
					</ul>
					</ul>
				</div>
				<!--第六部分完-->
				<div class="panel-heading">
					<a class="open-menu" href="#collapseseven" data-toggle="collapse"
						data-parent="#accordion"> <span
						class="glyphicon glyphicon-envelope"></span> <span>邮件管理</span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>

					</a>
				</div>
				<div id="collapseseven" class="panel-collapse collapse ">
					<ul>
						<li><a href="javascript:changepath('accountmanage');"> <span class="glyphicon glyphicon-record"></span>
								<span>账号管理</span>
						</a></li>
						<li><a href="javascript:changepath('mail');"> <span class="glyphicon glyphicon-record"></span>
								<span>邮件管理</span>
						</a></li>
					</ul>
				</div>
				<!--第七个完-->

				<div class="panel-heading">
					<a class="open-menu" href="#collapseeight" data-toggle="collapse"
						data-parent="#accordion"> <span
						class="glyphicon glyphicon-flag"></span> <span>任务管理</span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>
					</a>
				</div>
				<div id="collapseeight" class="panel-collapse collapse">
					<ul>
						<li><a href="javascript:changepath('taskmanage');"> <span class="glyphicon glyphicon-record"></span>
								<span>任务管理</span>
						</a></li>
						<li><a href="javascript:changepath('mytask');"> <span class="glyphicon glyphicon-record"></span>
								<span>我的任务</span>
						</a></li>
					</ul>
				</div>
				<!--第八部分完-->

				<div class="panel-heading">
					<a class="open-menu" href="#collapsenine" data-toggle="collapse"
						data-parent="#accordion"> <span
						class="glyphicon glyphicon-calendar"></span> <span>日程管理</span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>

					</a>
				</div>
				<div id="collapsenine" class="panel-collapse collapse">
					<ul>
						<li><a href=""> <span class="glyphicon glyphicon-record"></span>
								<span>日程管理</span>
						</a></li>
						<li><a href=""> <span class="glyphicon glyphicon-record"></span>
								<span>我的日历</span>
						</a></li>
					</ul>
					</ul>
				</div>
				<!--第九部分完-->
				<!--第十部分-->
				<div class="panel-heading">
					<a class="open-menu" href="#collapseten" data-toggle="collapse"
						data-parent="#accordion"> <span
						class="glyphicon glyphicon-plane"></span> <span>工作计划 </span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>

					</a>
				</div>
				<div id="collapseten" class="panel-collapse collapse ">
					<ul>
						<li><a href="javascript:changepath('planview');"> <span class="glyphicon glyphicon-record"></span>
								<span>计划管理</span>
						</a></li>
						<li><a href="javascript:changepath('myplan');"> <span class="glyphicon glyphicon-record"></span>
								<span>计划报表</span>
						</a></li>
					</ul>
				</div>
				<!--第十个完-->

				<div class="panel-heading">
					<a class="open-menu" href="#collapseeleven" data-toggle="collapse"
						data-parent="#accordion"> <span
						class="glyphicon glyphicon-folder-open"></span> <span>文件管理</span>
						<span class="glyphicon glyphicon-menu-left pull-right"></span>
					</a>
				</div>
				<div id="collapseeleven" class="panel-collapse collapse">
					<ul>
						<li><a href="javascript:changepath('filemanage');"> <span class="glyphicon glyphicon-record"></span>
								<span>文件管理</span>
						</a></li>
					</ul>
				</div>
				<!--第十一部分完-->

				<div class="panel-heading">
					<a class="open-menu" href="#collapsetwelve" data-toggle="collapse"
						data-parent="#accordion"> <span
						class="glyphicon glyphicon-edit"></span> <span>笔记管理</span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>
					</a>
				</div>
				<div id="collapsetwelve" class="panel-collapse collapse">
					<ul>
						<li><a href="javascript:changepath('noteview');"> <span class="glyphicon glyphicon-record"></span>
								<span>笔记管理</span>
						</a></li>
					</ul>
					</ul>
				</div>
				<!--第十二部分完-->
				<div class="panel-heading">
					<a class="open-menu" href="#collapsethirteen"
						data-toggle="collapse" data-parent="#accordion"> <span
						class="glyphicon glyphicon-earphone"></span> <span>通讯录</span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>
					</a>
				</div>
				<div id="collapsethirteen" class="panel-collapse collapse">
					<ul>
						<li><a href="javascript:changepath('addrmanage');"> <span class="glyphicon glyphicon-record"></span>
								<span>通讯录</span>
						</a></li>
					</ul>
					</ul>
				</div>
				<!--第十三部分完-->
				<div class="panel-heading">
					<a class="open-menu" href="#collapsefourteen"
						data-toggle="collapse" data-parent="#accordion"> <span
						class="glyphicon glyphicon-comment"></span> <span>讨论区</span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>
					</a>
				</div>
				<div id="collapsefourteen" class="panel-collapse collapse">
					<ul>
						<li><a href=""> <span class="glyphicon glyphicon-record"></span>
								<span>讨论区管理</span>
						</a></li>
						<li><a href=""> <span class="glyphicon glyphicon-record"></span>
								<span>讨论区列表</span>
						</a></li>
					</ul>
				</div>
				<!--第十四部分完-->

			</div>
		</div>
	</div>
</div>