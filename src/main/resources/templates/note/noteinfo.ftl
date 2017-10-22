<!DOCTYPE html>
<html>
<#include "/common/commoncss.ftl">
<style>
		
		.box-header {
			border-bottom: 1px solid #f4f4f4;
			font-size: 20px;
		}
		.box-body .info{
			border-bottom: 1px solid #f4f4f4;
		}
		
		.box-body .message img{
			width: 200px;
			height: 150px;
		}
		.box-body .little{
			color: #999;
    		font-size: 13px;
		}
		
		
	</style>
	</head>
	<body>

		<div class="row ">
			<div class="col-md-12 ">
				<div class="box box-primary ">
					<div class=" box-header ">
						<h3 class="box-title">查看</h3>
					</div>
					<div class="box-body">
						<div class="info">
							<h3>${note.title}</h3>
							
							<h5 class="little">
								<span >创建：${user.userName}</span>
								<span class="pull-right">时间:${note.createTime}</span>
							</h5>
						</div>
						<div class="message">
							<span>
								${note.content}
								<#if att??>
								<div>
									<img src="down?nid=${note.noteId}" />
								</div>
								</#if>
								<hr>
								<#if att??>
								<a href="down?attrid=${att.attachmentId}">
									<span class="glyphicon glyphicon-paperclip">下载附件</span>
								</a>
								</#if>
							</span>
						</div>
					</div>
					<div class="box-footer">
						<div class="pull-right">
							<a onclick="javascript:window.print();"  id="ctl00_cphMain_lnbDraft" class="btn btn-default glyphicon glyphicon-print">打印</a>
							<a id="ctl00_cphMain_lnbSend"  onclick="notejump('noteedit',${note.noteId})" class="btn btn-primary glyphicon glyphicon-edit ">编辑</a>	
						</div>
						<a class="btn btn-default"  onclick="notejump('notewrite','-2')"> 
							<span class="glyphicon glyphicon-chevron-left"></span>
							返回
						</a>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
