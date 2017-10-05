<#include "/common/commoncss.ftl"/>
<style type="text/css">
a {
	color: black;
}

ul li a {
	font-size: 13px;
}

a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}
/*下面是主题回复*/
.chat-box .chat-title {
	padding: 10px;
	border-bottom: 1px solid #ddd;
}

.chat-box .big-img {
	border-radius: 50%;
	border: 2px solid #ddd;
	float: left;
	width: 40px;
	height: 40px;
}

.chat-box .username {
	display: block;
	margin-left: 50px;
}

.chat-box .right-time {
	margin-left: 50px;
	display: block;
}

.chat-box .comment-td {
	padding: 0;
	width: 40px;
}

.chat-box .raply-name {
	color: #54a0ea;
}

.addmore:HOVER {
	cursor: pointer;
}
.progress{
	margin: 4px auto;
}
.likethisnum a{
	color: #5f5f5f;
}
.likethisnum a:HOVER {
	color:#347ab7;
	text-decoration: underline;
}
</style>

<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;">主题查看</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="index"><span class="glyphicon glyphicon-home"></span> 首页</a>
		> <a disabled="disabled">主题查看</a>
	</div>
</div>

<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		<!--id="container"-->
		<div class="bgc-w box box-primary"
			style="border-top: 3px solid #d2d6de; color: #5f5f5f;">
			<!--盒子头-->
			<div class="box-header">
				<h3 class="box-title">
					<a href="javascript:history.back();" class="label label-default"
						style="padding: 6px;"> <span
						class="glyphicon glyphicon-chevron-left">返回</span>
					</a> <a href="" class="label label-success"
						style="padding: 5px; margin-left: 5px;"> <span
						class="glyphicon glyphicon-refresh"></span> 刷新
					</a>
					<!-- <a href="#" class="label label-success"
						style="padding: 6px; margin-left: 8px;"> <span
						class="glyphicon glyphicon-share-alt">回复</span>
					</a> -->
				</h3>

			</div>
			<!--盒子身体-->
			<div class="box-body no-padding chat-box">
				<div class="chat-title">
					<h4>
						<span>${discuss.title}</span>
					</h4>
					<h5>
						<small> <span>发布：${user.userName}</span> <span
							class="pull-right">${discuss.createTime}</span>
						</small>
					</h5>
				</div>
				<div style="padding: 10px;">
				<div class="voteload">
					<#include "votetable.ftl"/>
				</div>
					<div class="chat-content" style="padding: 10px;">
						<p>${discuss.content}</p>
					</div>
					<div>
						<div class="discusschange">
							<#include "discusslike.ftl"/>
						</div>
						<input type="hidden" class="replyId" /> <input type="hidden"
							class="replyModule" /> <input type="hidden" class="replyName" />
					</div>
					<div class="repay">
						<#include "replytable.ftl"/>
					</div>
				</div>
				<!--盒子尾-->
			</div>
		</div>
	</div>
<!-- 存在 -->
<script type="text/javascript">
	$('.repay').on('click','.deletethis',function(){
		var num=${discuss.discussId};
		var replyId = $(this).attr('replyId');
		var module = $(this).attr('replyModule');
		var size=${page.size};
		if(confirm("确定删除吗？ 不能恢复哟~")){
			$('.repay').load('replydelete',{replyId:replyId,module:module,num:num,size:size});
		}
		
		
	});
	
	
	
	$("#thisreply").on('click',function(){
		var replyId = $(this).attr('replyId');
		var module = $(this).attr('replyModule');
		var name = $(this).attr('replyName');
		$('.replyId').val(replyId);
		$('.replyModule').val(module);
		$('.replyName').val(name);
		if(typeof(name) != 'undefined' ){
			$("#comment").val("@"+name);
		}
		$("#myModal").modal("toggle");
	});
	
	$('.repay').on('click', '.thisreply',function() {
		var replyId = $(this).attr('replyId');
		var module = $(this).attr('replyModule');
		var name = $(this).attr('replyName');
		$('.replyId').val(replyId);
		$('.replyModule').val(module);
		$('.replyName').val(name);
		console.log(typeof(name));
		if(typeof(name) != 'undefined' ){
			$("#comment").val("@"+name);
		}
		$("#myModal").modal("toggle");
	});
	
	
</script>