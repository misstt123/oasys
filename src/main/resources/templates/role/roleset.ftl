<#include "/common/commoncss.ftl">
<link rel="stylesheet" href="css/common/checkbox.css" />
<link rel="stylesheet" href="css/role/roleset.css" />

<script>
	$(function() {
		
			$(".widths").each(
					function() {
						var $val = $(this).text();

						if ($val == "#") {
							var $this = $(this).parents("tr");
							$this.css("background-color",
									"rgba(255, 235, 59, 0.19)");
							$this.hover(function() {
								$this.css("background-color",
										"rgba(158, 158, 158, 0.09)");
							}, function() {
								$this.css("background-color",
										"rgba(255, 235, 59, 0.19)");
							})
						}
					})

			$(".menus").each(function() {
				var $val = $(this).text();
				if ($val == "菜单") {
					$(this).css("color", "#4caf50");
				} else {
					$(this).css("color", "#9e9e9e");
				}
			})
			
			 $("[name=show]:checkbox").click(function(){
				var $roleid=${roleid}
				var menu;
				var content;
				 if(this.checked){
					menu=$(this).parents("td").siblings(".menuid").text();
					content="选中"
				}else{
					 menu=$(this).parents("td").siblings(".menuid").text();
					 content="未选中"
				}
				 console.log(menu); console.log(content);
				 $.post("powerss",{roleid:$roleid,content:content,menuid:menu},function(){
					 
				 }) 
			 })
			
		});
	
</script>
<style>
.table>tbody>tr>td{
    border-top: 1px solid rgba(245, 245, 220, 0.29);
    }
</style>
</head>

<body style="background-color: #ecf0f5;">

	<div class="">
		<div class=" ">
			<div class="row">
				<div class="col-md-2">
					<h1 style="font-size: 24px; margin: 0;" class="">${(rolename)!''}</h1>
				</div>
				<div class="col-md-10 text-right">
					<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
					> <a disabled="disabled">${(rolename)!''}</a>
				</div>
			</div>
			<div class="row" style="padding-top: 15px;">
				<div class="col-md-12">
					<div class="bgc-w box box-primary">
						<!--盒子头-->
						<div class="box-header">
							<a class="btn btn-sm label-back"
								href="javascript:history.back();"> <span
								class="glyphicon glyphicon-chevron-left"></span> 返回
							</a>
						</div>
						<!--盒子身体-->
						<div class="box-body no-padding">
							<div>
								<table class="table table-hover ">
									<tr>
										<th scope="col">ID</th>
										<th scope="col">名称</th>
										<th scope="col" class="widths">路径</th>
										<th scope="col">类型</th>
										<th scope="col">开启权限</th>
										

									</tr>
									<#list oneMenuAll as par>
									<tr style="background-color:rgba(255, 235, 59, 0.19);" >
										<td class="menuid">${par.menuId}</td>
										<td><span>${par.menuName}</span></td>
										<td><span class="widths">${par.menuUrl}</span></td>
										<td><span class="menus">菜单</span></td>
										<td>
										<#if par.check==true>
											<span class="labels">
												<label><input type="checkbox" name="show" class="val" checked><i>✓</i></label></span>
													<#else>
											<span class="labels">
												<label><input type="checkbox" name="show" class="val"><i>✓</i></label></span>
										</#if></td>
										

									</tr>
									<#list twoMenuAll as son>
									<#if par.menuId==son.parentId>
									<tr >
										<td class="menuid">${(son.menuId)!''}</td>
										<td><span>${(son.menuName)!''}</span></td>
										<td><span class="widths">${(son.menuUrl)!''}</span></td>
										<td><span class="menus" >菜单</span></td>
										<td><#if son.check==true>
											<span class="labels">
												<label><input type="checkbox" name="show" class="val" checked><i>✓</i></label></span>
													<#else>
											<span class="labels">
												<label><input type="checkbox" name="show" class="val"><i>✓</i></label></span>
										</#if></td>
										

									</tr>
									</#if>
									</#list>
									</#list>
									
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>