<#include "/common/commoncss.ftl">
<link rel="stylesheet" href="css/mail/seemail.css" />
<script type="text/javascript" src="js/common/iconfont.js"></script> 
<link rel="stylesheet" href="css/common/iconfont.css" />
<div class="col-md-12 see">
	<label class="font">查看</label>

	<div class="page-header"></div>
	<div class="box-body">
		<div class="row">
			<div class="box-body">
				<div class=" mailbox-read-info">
					<h3>
						<span id="ctl00_cphMain_lblTitle">主题： ${mail.mailTitle}</span>
					</h3>
					<h5 class="fonts">
						<span id="ctl00_cphMain_lblFrom" class="mailbox-read-time">发送：<i>${pushname}</i>
							&nbsp;&nbsp;接收：<i>${(mail.inReceiver)!''}</i></span> <span id="ctl00_cphMain_lblDate"
							class="mailbox-read-time pull-right">${mail.mailCreateTime}</span>
					</h5>
				</div>
				<div class="mailbox-read-message">
					<span id="ctl00_cphMain_lblDescription">邮件描述：</span> 
					<span id="ctl00_cphMain_lblFeedback">
						<div style="padding-left: 64px;">
							<p>${mail.content}</p>
						</div>
					</span>
					<span id="ctl00_cphMain_lblDescription">附件信息：</span> 
					<span id="ctl00_cphMain_lblFeedback">
						<div style="padding-left: 64px;">
							<p><#if mail.mailFileid??>
							<#if filetype=="img">
							<a href="javacript:void(0);" class="label xiugai yulan" title="图片预览">
							<span class="glyphicon glyphicon-search"></span> 预览</a>
							</#if>
							<a href="file?fileid=${(mail.mailFileid.attachmentId)!''}" class="label xiugai">
							<span class="glyphicon glyphicon-download-alt"></span> 下载</a>
							</#if></p>
						</div>
					</span>
				</div>
			</div>

		</div>
	</div>

	<div class="box-footer foots">
		<a class="btn btn-default fault fa-back"
			href="mail"><span
			class="glyphicon glyphicon-chevron-left"></span> 返回</a>
		<div class="pull-right foot">
			<a class="btn btn-default fault" onclick="javascript:window.print();">
			   <span class="glyphicon glyphicon glyphicon-print"></span> 打印</a>
			 <#if mess=="垃圾箱"||mess=="草稿箱"> 
			 <#else>
			<a class="btn btn-primary huifu"> 
				<svg class="icon" aria-hidden="true"style="color: #fff;">
							<use xlink:href="#icon-huifu"></use>
				</svg> 回复
			</a> 
			<a class="btn btn-primary zhuanfa">
			<span class="glyphicon glyphicon-share-alt"></span> 转发</a>
			</#if>
		</div>
	</div>
</div>
<script>
	$(function(){
		//预览图片
		$('.yulan').popover({
    		html:true,
    		placement:'auto right',
				trigger: 'hover click',
    		template:'<div class="popover" role="tooltip"><div class="arrow"></div>'
    		+'<h3 class="popover-title"></h3><div><img src="show/${(filepath)!''}"style="max-width: 200px;"/></div><div class="popover-content"></div></div>'
    	})
		//回复
		$(".huifu").click(function(){
			var id=${mail.mailId};
			var $huifu="【回复】";
			$(".set").load("wmail",{id:id,huifu:$huifu});
		});
		//回复
		$(".zhuanfa").click(function(){
			var id=${mail.mailId};
			var $huifu="【转发】";
			$(".set").load("wmail",{id:id,huifu:$huifu});
		});
	})

</script>