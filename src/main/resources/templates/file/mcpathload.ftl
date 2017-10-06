<#if mcpaths?? &mcpaths?size gt 0  >
	<#list mcpaths as path>
		<div class="pathidcompare" pathId="${path.id}">
			<div class="box-header no-padding">
				<span class="btn btn-default btn-xs des mm"> 
					<i class="jiajian glyphicon-plus"></i>
				</span>
				<span class="openpath modalajax">
					<div class="mcflooropen"></div>
					<h3 class="box-title" style="font-size:12px;">${path.pathName}</h3>
					<input class="mctopathid" type="hidden" value="${path.id}" />
				</span>
			</div>
			<ul class="nav nav-pills nav-stacked mm modalajaxdata" style="padding-left:15px;display:none;">
				
			</ul>
		</div>
	</#list>
<#else>
	<div style="padding-left:15px;">此文件夹为空</div>
</#if>