<#include "/common/commoncss.ftl">
<link rel="stylesheet" href="css/common/checkbox.css" />
<link rel="stylesheet" href="css/role/roleset.css" />

<script>
	$(function() {
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
		})
	})
</script>
<style>
table>tbody>tr>td{
    border-top: 1px solid rgba(245, 245, 220, 0.29);
    }
</style>
</head>

<body style="background-color: #ecf0f5;">

	<div class="">
		<div class=" ">
			<div class="row">
				<div class="col-md-2">
					<h1 style="font-size: 24px; margin: 0;" class="">总经理</h1>
				</div>
				<div class="col-md-10 text-right">
					<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
					> <a disabled="disabled">总经理</a>
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
										<th scope="col">管理模式</th>

									</tr>
									<#list oneMenuAll as par>
									<tr style="background-color:rgba(255, 235, 59, 0.19);" >
										<td>${par.menuId}</td>
										<td><span>${par.menuName}</span></td>
										<#if par.menuUrl??>
										<td><span class="widths">${par.menuUrl}</span></td>
										<#else>
										<td><span class="widths">#3</span></td>
										</#if>
										<td><span class="menus" style="color:">菜单</span></td>
										<td><span class="labels"><label><input
													type="checkbox"><i>✓</i></label></span></td>
										<td><span class="labels"><label><input
													type="checkbox"><i>✓</i></label></span></td>

									</tr>
									<#list twoMenuAll as son>
									<#if par.menuId==son.parentId>
									<tr >
										<td>${son.menuId}</td>
										<td><span>${son.menuName}</span></td>
										<#if son.menuUrl??>
										<td><span class="widths">${son.menuUrl}</span></td>
										<#else>
										<td><span class="widths">#3</span></td>
										</#if>
										<td><span class="menus" style="color:">菜单</span></td>
										<td><span class="labels"><label><input
													type="checkbox"><i>✓</i></label></span></td>
										<td><span class="labels"><label><input
													type="checkbox"><i>✓</i></label></span></td>

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