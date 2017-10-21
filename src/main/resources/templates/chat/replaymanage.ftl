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
.chat-box .small-img {
	border-radius: 50%;
	border: 2px solid #ddd;
	width: 30px;
	height: 30px;
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
.table>tbody>tr>td{
				padding: 4px;
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
					<a href="${returnUrl}?page=${pageNumber}" class="label label-default"
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
					<div>
						<table class="table" style="margin-bottm: 0px;">
						<#if replyList?? &&replyList?size gt 0>
							<tr>
								<th scope="col" style="background-color: #EEEEEE;">
								<span style="line-height: 35px;">回复</span>
								<div class="pull-right" style="display: inline-block;margin-right:50px;font-weight: 400;">
								<select name="selecttype" id="selecttype" class="selectthis  form-control" style="display: inline-block;margin-right: 10px;width: 115px;font-size: 13px;">
									<option value="">查看所有</option>
									<option value="${discuss.user.userId}">只看楼主</option>
									<option value="${userId}">只看我的</option>
								</select>
								<select name="selectsort" id="selectsort" class="selectthis  form-control" style="display: inline-block;width: 115px;font-size: 13px;">
									<option value="0">时间升序</option>
									<option value="1">时间降序</option>
								</select>
								</div>
								</th>
								
							</tr>
						</#if>
							<tbody class="repay">
							<#include "replytable.ftl"/>
							</tbody>
						</table>
						<input type="hidden" id="hiddenreplyId"/>
						<input type="hidden" id="hiddenreplyModule"/>
					</div>
				</div>
				<!--盒子尾-->
			</div>
		</div>
	</div>
<script type="text/javascript" src="js/usershow.js"></script>
<!-- 存在 -->
<script type="text/javascript">
/*查看类型和时间排序的select选择的改变事件  */
$('.selectthis').on('change',function(){
	var selecttype=$("#selecttype option:selected").val();
	var selectsort=$("#selectsort option:selected").val();
	var num=${discuss.discussId};
	$('.repay').load('/replypaging',{num:num,selecttype:selecttype,selectsort:selectsort}); 
});
/*所有点赞的同一处理，在之前清除掉之前绑定的事件  */
$('.chat-box').off('click','.likethis').on('click','.likethis',function(){
	$('.thisClass').removeClass("thisClass");
	$('.replyrefresh').removeClass("replychange");
	$(this).addClass("thisClass");
	$(this).parents('.replyrefresh').addClass('replychange');
	var replyId=$(this).attr('replyId');
	var module=$(this).attr('module');
	var size=${page.size};
	console.log("rightNum:"+rightNum);
	console.log(replyId);
	console.log(module);
	  /*$.ajax({
		type:'get',
		url:'/likeuserload',
		data:{module:module,replyId:replyId,size:size},
		success:function(date){
			console.log(date);
			$('.discusschange').html(date);
			//$('.thisClass').children(".likenum").text(date);
		},
		error:function(){
			alert("失败了");
		}
	}) */
	if(module=="discuss"){
		console.log("说明是讨论区，进行load方法了；");
		$('.discusschange').load('/likeuserload',{module:module,replyId:replyId,size:size});
	}else if(module=="reply"){
		console.log("说明是回复区，准备进行load方法");
		var rightNum=$(this).parent().siblings(".pull-right").children(".rightNum").text();
		$('.replychange').load('/likeuserload',{module:module,replyId:replyId,size:size,rightNum:rightNum});
	}else{
		console.log("参数错误");
	}
	
});
/*回复表的删除  */
	$('.repay').on('click','.deletethis',function(){
		var num=${discuss.discussId};
		var replyId = $(this).attr('replyId');
		var module = $(this).attr('replyModule');
		var size=${page.size};
		if(confirm("确定删除吗？ 不能恢复哟~")){
			$('.repay').load('replydelete',{replyId:replyId,module:module,num:num,size:size});
		}
	});
/* 回复与评论的处理，模态框显示，假如是点击评论进入的，则在前面加@那个的名字 */	
	$("#thisreply").on('click',function(){
		$("#hiddenreplyId").val($(this).attr('replyId'));
		$("#hiddenreplyModule").val($(this).attr('replyModule'));
		var name = $(this).attr('replyName');
		$('.replyName').val(name);
		if(typeof(name) != 'undefined' ){
			$("#comment").val("@"+name);
		}
		$("#myModal").modal("toggle");
	});
/*  */
	$('.repay').on('click', '.thisreply',function() {
		$("#hiddenreplyId").val($(this).attr('replyId'));
		$("#hiddenreplyModule").val($(this).attr('replyModule'));
		var name = $(this).attr('replyName');
		$('.replyName').val(name);
		console.log(typeof(name));
		if(typeof(name) != 'undefined' ){
			$("#comment").val("@"+name);
		}
		$("#myModal").modal("toggle");
	});
</script>