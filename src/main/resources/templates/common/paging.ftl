<div class="box-footer no-padding" style="margin-top: -20px;">
	<div style="padding: 5px;">
		<div id="page"
			style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
			<div style="width: 40%; float: left;">
				<div class="pageInfo" style="margin-left: 5px;">
					共<span>${page.totalElements}</span>条 | 每页<span>${page.size}</span>条
					| 共<span>${page.totalPages}</span>页
				</div>
			</div>
			<div style="width: 60%; float: left;">
				<div class="pageOperation">
				<!--第一页  -->
					<a class="btn btn-sm btn-default no-padding tablefirst" <#if page.first==true>disabled</#if>
						style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-backward"></span>
					</a> 
				<!--上一页  -->
					<a class="btn btn-sm btn-default no-padding tableup" <#if page.first==true>disabled</#if>
						style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-triangle-left"></span>
					</a> 
				<!--当前页 -->
					<a disabled="disabled" class="btn btn-default no-padding"
						style="width: 30px; height: 20px;"><#if (page.number+1) lte page.totalPages>${(page.number)+1} <#else>${page.totalPages}</#if>  
					</a> 
				<!--下一页  -->
					<a class="btn btn-sm btn-default no-padding tabledown" <#if page.last==true>disabled</#if>
						style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-triangle-right"></span>
					</a> 
				<!--最后一页  -->
					<a class="btn btn-sm btn-default no-padding tablelast" <#if page.last==true>disabled</#if>
						style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-forward"></span>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
