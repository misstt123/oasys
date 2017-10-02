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
					</a>
					<a href="" class="label label-success" style="padding: 5px;margin-left:5px;">
						<span class="glyphicon glyphicon-refresh"></span> 刷新
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
				<div class="chat-content" style="padding: 10px;">
					<p>${discuss.content}</p>
				</div>
				<div>
					<ul class="list-inline" style="margin-left: 6px;">
						<li><a href="#" class="label xinzeng thisreply"
							replyId="${discuss.discussId}" replyModule="discuss"> <span
								class="glyphicon glyphicon-share-alt"></span>回复
						</a></li>
						<li><a href="#"> <span class="glyphicon glyphicon-fire"
								style="color: red;"></span> 访问数<span>(${discuss.visitNum})</span>
						</a></li>
						<li><a href="#"> <span
								class="glyphicon glyphicon-comment" style="color: #337ab7"></span>
								讨论次数<span>(10)</span>
						</a></li>
					</ul>
					<input type="hidden" class="replyId" /> 
					<input type="hidden" class="replyModule" />
					<input type="hidden" class="replyName" />
				</div>
				<div class="repay">
					<#include "replytable.ftl"/>
				</div>
			</div>
			<!--盒子尾-->
		</div>
	</div>
</div>
<#include "/common/comment.ftl"/> <!--class nothing 完毕--> <script
	type="text/javascript">
	$('.thisreply').on('click', function() {
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
		console.log(replyId);
		console.log(module);
		$("#myModal").modal("toggle");
	});
	$('#commentsave').on('click', function() {
		console.log($('.replyId').val());
		console.log($('.replyModule').val());
		console.log($("#comment").val());
		var replyId = $('.replyId').val();
		var module = $('.replyModule').val();
		var comment = $("#comment").val();
		$('.repay').load('/replyhandle', {
			replyId : replyId,
			module : module,
			comment : comment
		});
	});
	$('.toggle').on(
			'click',
			function() {
				if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
					$(this).children('.glyphicon').removeClass(
							'glyphicon-triangle-bottom').addClass(
							"glyphicon-triangle-top");
				} else {
					$(this).children('.glyphicon').removeClass(
							'glyphicon-triangle-top').addClass(
							"glyphicon-triangle-bottom");
				}
			});
</script>