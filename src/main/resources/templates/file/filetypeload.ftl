<div class = "menu">
	<ul class="nav nav-pills nav-stacked" style="padding:5px 0 5px 0;">
		<li><a class="open">打开</a></li>
		<li><a class="downloadfile">下载</a></li>
		<li><a>分享</a></li>
		<li><a class="movefile">移动到</a></li>
		<li><a class="copyfile">复制到</a></li>
		<li><a class="rename">重命名</a></li>
		<li><a onclick="{return confirm('确定删除吗？');};" class="delete">删除</a></li>
	</ul>
</div>
<div class="bgc-w box box-primary" style="height: 695px;">
	<!--盒子头-->
	<div class="box-header">
		<#if nowpath.parentId == 1>
			<h3 class="box-title" style="font-size: 12px;">${nowpath.pathName}</h3>
		<#else>
			<h3 class="box-title" style="font-size: 12px;">
				<a style="font-size: 12px;" href="filetest?pathid=${nowpath.parentId}">返回上一层 </a>
				>
				<#list allparentpaths as allparenth>
				<a style="font-size: 12px;" href="filetest?pathid=${allparenth.id}">${allparenth.pathName}</a>
				>
				</#list>
				${nowpath.pathName}
			</h3>
		</#if>
		<div class="box-tools">
			<div class="input-group" style="width: 150px;">
				<input type="text" class="form-control input-sm"
					placeholder="查找..." />
				<div class="input-group-btn">
					<a class="btn btn-sm btn-default btn-change"><span
						class="glyphicon glyphicon-search"></span></a>
				</div>
			</div>
		</div>
	</div>
	<!--盒子身体-->
	<div class="box-body no-padding">
	
	
		<div style="padding: 5px;">
			<a class="btn btn-sm btn-default allcheck"
				href="javascript:void(0);" title="全选/反选"><span
				class="iconfont icon-xuanze1"></span></a>
			<div class="btn-group">
				<a onclick="{return confirm('确定删除吗？');};" class="btn btn-sm btn-default topdelete" href="deletefile?pathid=${nowpath.id}&checkpathids=&checkfileids=" title="删除">
					<span class="iconfont icon-lajitong"></span>
				</a> 
				<a class="btn btn-sm btn-default topcreatepath" href="javascript:void(0);" title="新建文件夹">
					<span class="iconfont icon-xinzengwenjian"></span>
				</a>
			</div>
			<a class="btn btn-sm btn-default" href="" title="刷新"><span
				class="iconfont icon-shuaxin"></span></a>
		</div>
		
		
		<div class="file-box" style="overflow-y: auto;">
			<div class = "boxcontain" style="height: auto;">
			
				<!--新建文件夹操作显示部分  -->
				<div class="file-one creatpath pathtextarea diplaynone" style="width: 144px;">
					<div class="file-img">
						<img src="images/fileimg/Folder.png" />
					</div>
					<div class="file-name" style="text-align: left;">
						<form action="createpath">
							<input class="creatpathinput" type="text" name="pathname" value="新建文件夹"/>
							<input type="hidden" name="pathid" value="${nowpath.id}"/>
							<button class="btn btn-default">
								<em class="glyphicon glyphicon-ok" style="font-size: 12px;"></em>
							</button>
							<span class="btn btn-default">
								<em class="glyphicon glyphicon-remove cansalcreate" style="font-size: 12px;"></em>
							</span>
						</form>
					</div>
					<span class="file-check"> 
						<span class = "iconfont icon-xuanze" style="height:1.5em;width:1.5em"></span>
					</span>
				</div>
				
				<#list paths as path>
					<div class="file-one">
						<div class="file-img path">
							<a href="filetest?pathid=${path.id}">
								<img src="images/fileimg/Folder.png" />
							</a>
						</div>
						<div class="file-name path">
							<div class="filename">
								<a href="filetest?pathid=${path.id}" style="font-size: 12px;">${path.pathName}</a>
							</div>
							<div class="pathtextarea rename diplaynone" style="position: absolute;top: 97px;left: -5px;z-index:100;">
								<form action="rename">
									<input class="creatpathinput" type="text" name="name" value="${path.pathName}"/>
									<input type="hidden" name="renamefp" value="${path.id}"/>
									<input type="hidden" name="pathid" value="${nowpath.id}"/>
									<input type="hidden" name="isfile" value="false"/>
									<button class="btn btn-default">
										<em class="glyphicon glyphicon-ok" style="font-size: 12px;"></em>
									</button>
									<span class="btn btn-default">
										<em class="glyphicon glyphicon-remove cansalcreate" style="font-size: 12px;"></em>
									</span>
								</form>
							</div>
						</div>
						<input type="hidden" class = "pathmessage" value="${path.id}">
						<span class="file-check"> 
							<span class = "iconfont icon-xuanze" style="height:1.5em;width:1.5em"></span>
						</span>
					</div>
				</#list>
				<#list files as file>
					<div class="file-one">
						<#if file.fileShuffix == "zip">
								<div class="file-img">
									<img src="images/fileimg/ZIP.png" />
								</div>
							<#elseif file.fileShuffix == "mp4" || file.fileShuffix == "rmvb">
								<div class="file-img">
									<img src="images/fileimg/Video.png" />
								</div>
							<#elseif file.fileShuffix == "txt" || file.fileShuffix == "word">
								<div class="file-img">
									<img src="images/fileimg/Text.png" />
								</div>
							<#elseif file.fileShuffix == "mp3">
								<div class="file-img">
									<img src="images/fileimg/Music.png" />
								</div>
							<#elseif file.fileShuffix == "jpg" || file.fileShuffix == "png">
								<div class="file-img">
									<img src="imgshow?fileid=${file.fileId}" style="height:71px;width:56px;"/>
								</div>
							<#else>
								<div class="file-img">
									<img src="" />
								</div>
						</#if>                                   
						<div class="file-name">
							<div class="filename">
								<a>${file.fileName}</a>
							</div>
							<div class="pathtextarea rename diplaynone" style="position: absolute;top: 97px;left: -5px;z-index:100;">
								<form action="rename">
									<input class="creatpathinput" type="text" name="name" value="${file.fileName}"/>
									<input type="hidden" name="renamefp" value="${file.fileId}"/>
									<input type="hidden" name="pathid" value="${nowpath.id}"/>
									<input type="hidden" name="isfile" value="true"/>
									<button class="btn btn-default">
										<em class="glyphicon glyphicon-ok" style="font-size: 12px;"></em>
									</button>
									<span class="btn btn-default">
										<em class="glyphicon glyphicon-remove cansalcreate" style="font-size: 12px;"></em>
									</span>
								</form>
							</div>
						</div>
						<input type="hidden" class = "filemessage" value="${file.fileId}">
						<span class="file-check"> 
							<span class = "iconfont icon-xuanze" style="height:1.5em;width:1.5em"></span>
						</span>
					</div>
				</#list>
			</div>
		</div>
	</div>
</div>