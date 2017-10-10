<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<#include "/common/commoncss.ftl">
<link href="css/common/iconfont.css" rel="stylesheet" />
<link href="css/common/checkbox.css" rel="stylesheet" />

<script type="text/javascript" src="js/iconfont.js"></script>
<script charset="utf-8" src="plugins/kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="plugins/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript" src="js/note/noteview.js"></script>
<script type="text/javascript">
$(function(){
//收缩
$(".change").click(function(){
		var $this=$(this).children();
		var $ul=$(this).parents(".box-header").next();
		if($this.hasClass("glyphicon-minus")){
				$this.removeClass("glyphicon-minus").addClass("glyphicon-plus");
				$ul.slideToggle(500);
			} 
			else{
				$this.removeClass("glyphicon-plus").addClass("glyphicon-minus");	
				$ul.slideToggle(500);
			} 
	})
		
 
});




function notetype(id){
	var $cataid;
    $(".cata ul li ").each(function(){
      if($(this).hasClass("borderleft")){
	$cataid=$(this).children("a").attr("id");
	}
      })
  var data={typeid:id,
	id:$cataid}
   var url = 'notetype';
   $.ajax({
		type : "get",
		async : false,
		url : url,
		data:data,
		success : function(dates) {
			$('#container').html(dates);
		},
	    error:function(){
	    	alert("失败了")
	    }
	})
	}
	
function notejump(url,id){
	  var data={id:id}
	 /*  alert("---"+id); */
	   //显示具体信息
	   var url = url;
	   //弹到最开始的最近那里
	   $(".cata ul .recent").addClass("borderleft").siblings().removeClass("borderleft");
	   $.ajax({
			type : "get",
			async : false,
			url : url,
			data:data,
			success : function(dates) {
				$('#container').html(dates);
			},
		    error:function(){
		    	alert("失败了")
		    }
		})
		}


function increase(){
	var $zengjia=$(".input-group #increase").val();
	if($zengjia==""||$zengjia==null)
		return confirm('输入不能为空');
	var data={name:$zengjia};
	$.ajax({
		type:"post",
	    async:false,
		url : 'noteview',
		data:data,
		success:function(){
			 window.location.reload(); 
		},
		error:function(){
			alert("失败")
		}
	}) 
} 

</script>
<style type="text/css">
.icon {
	width: 1em;
	height: 1em;
	vertical-align: -0.15em;
	fill: currentColor;
	overflow: hidden;
}

a {
	color: black;
}

a:hover {
	text-decoration: none;
}
/*.col-md-2,
			.col-md-3 {
				border: 1px solid red;
			}*/
.bgc-w {
	background-color: #fff;
}

.bgc-w ul {
	list-style-type: circle !important;
}

.nav-stacked>li {
	border-bottom: 1px solid #f4f4f4;
	margin: 0;
}

.nav-stacked>li>a {
	border-radius: 0;
	border-top: 0;
	border-left: 3px solid transparent;
	color: #444;
}

.row {
	cursor: pointer;
}

.row .container .row .col-md-3 .box .box-header b {
	float: right;
	cursor: pointer;
}

.box-header i {
	text-align: center;
	height: 25px;
	border: none;
}
.box-header span{
border: none;
}
.box-header i:hover {
	background-color: #E7E7E7;
}

.glyphicon-star-empty {
	color: #f39c12 !important;
}

.glyphicon-star {
	color: #f39c12 !important;
}

.borderleft {
	border-left: 3px solid #3c8dbc;
}

.active {
	display: none;
}
</style>

</head>

<body style="background-color: #ecf0f5;">

	<div >
		<div>
			<div class="row" style="padding-top: 10px">
				<div class="col-md-2">
					<h1 style="font-size: 24px; margin: 0;" class="">笔记管理</h1>
				</div>
				<div class="col-md-10 text-right">
					<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
					> <a disabled="disabled">笔记管理</a>
				</div>
			</div>

			<div class="row" style="padding-top: 15px;">
				<div class="col-md-3">
					<a class="btn btn-primary " onclick="notejump('noteedit','-1')"
						style="width: 100%; margin-bottom: 20px;"><span
						class="glyphicon glyphicon-pencil"></span> 新建</a>
					<div class="bgc-w box box-solid cata">
						<div class="box-header">
							<h3 class="box-title">笔记</h3>
							<span class="btn btn-xs btn-default  pull-right  change">
							<i class="glyphicon glyphicon-minus"></i>
							</span>
						</div>
						<ul class="nav nav-pills nav-stacked">
							<li class="borderleft recent"><a onclick="notejump('notewrite')" id=-2> <span
									class="glyphicon glyphicon-time"></span> 最近
							</a></li>
							
							
							<!-- 使用foreach循环 循环出集合-->
							
							<#if calist??>
							<#list calist as ca>
							<li class="editable">
							<a   onclick="notejump('notecata',${ca.catalogId})"  id=${ca.catalogId}><span
									class="iconfont icon-icon4" ></span>
									${ca.catalogName}</a>
									</li>
									</#list>
									</#if>
									
							
						</ul>
					</div>



					<div class="box box-solid">
						<div class="box-header with-border">
							<h3 class="box-title">分类</h3>
						</div>
						<div class="box-body">
							<div class="input-group">
								<input id="increase" placeholder="笔记分类" class="form-control" type="text" />
								<div class="input-group-btn">
									<input  onclick="increase()" type="button" class="btn btn-primary " value="新增" />
								</div>

							</div>
						</div>
					</div>

					<div class="bgc-w box box-solid type">
						<div class="box-header">
							<h3 class="box-title">类型</h3>
							<span class="btn btn-xs btn-default  pull-right change">
							<i class="glyphicon glyphicon-minus "></i>
								</span>
						</div>
						<ul class="nav nav-pills nav-stacked">
						    <#if typelist??>
							    <#list typelist as t>
									<li><a onclick="notetype(${t.typeId})" > <svg class="icon" aria-hidden="true">
													<use xlink:href="#icon-kongxinquan"></use>
												</svg> ${t.typeName}
									</a></li>
								</#list>
							</#if>
						</ul>
					</div>
				</div>
				
				<div class="col-md-9 thistable" id="container">
				<#include "/note/notewrite.ftl">
				</div>
				
			</div>
		</div>
	</div>
	
	
</body>


</html>