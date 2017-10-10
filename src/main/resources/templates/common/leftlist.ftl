<div id="smallDiv"
	style="width: 3%; background: red; float: left; display: none;">
	<div style="text-align: center; height: 50px; padding-top: 7px;" class="green-g">
		<a href="#"><img src="images/logo_1.png" /></a>
	</div>
	<div class="list-left"
		style="width: 100%; background: rgb(34, 45, 50);">
		<div style="padding: 10px 0 20px 6px;">
			<img src="images/touxiang/${(user.imgPath)!'timg.jpg'}"
				style="width: 32px; height: 32px; border-radius: 50%;" />
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
	<div class="col-md-12 green-g">
		<a href="index" class="navbar-brand" style="padding: 8px 40px;"><img
			src="images/logo.png" /></a>
	</div>
	<div class="col-md-12 list-left"
		style="background: #222d32; height: 845px">
		<div class="user-panel">
			<div class="pull-left">
				<img src="images/touxiang/${(user.imgPath)!'timg.jpg'}" class="img-circle user-image-left" />
			</div>
			<div class="pull-left info">
				<p style="color: #fff; line-height: 1.5;">
					<span>${user.userName}</span><br> <small><span
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
				<#list oneMenuAll as one>
				<div class="panel-heading">
					<a class="open-menu green-left" href="#collapse${one.menuId}" data-toggle="collapse"
						data-parent="#accordion"> <span
						class="glyphicon ${one.menuIcon}"></span> <span>${one.menuName}</span> <span
						class="glyphicon glyphicon-menu-left pull-right"></span>
					</a>
				</div>
				<div id="collapse${one.menuId}" class="panel-collapse collapse ">
					<ul>
					<#list twoMenuAll as two>
					<#if one.menuId==two.parentId>
						<#if two.menuUrl??>
						<li>
							<a href="javascript:changepath('${two.menuUrl}');"> <span
									class="glyphicon ${two.menuIcon}"></span> <span>${two.menuName}</span>
							</a>
						</li>
						
						<#else>
							<li>
								<a href="#"> <span
										class="glyphicon ${two.menuIcon}"></span> <span>${two.menuName}</span>
								</a>
							</li>
						</#if>
				</#if>
				</#list>
				</ul>
				</div>
				</#list>
			</div>
		</div>
	</div>
</div>