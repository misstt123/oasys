<div class="modal-2">
		<div class="modal-header" style="margin: 10px; margin-top: -20px;">
		<button class="close" data-dismiss="modal"
			style="display: block; margin: -52px -78px 0 0;; border-radius: 60%;">
			<span class="glyphicon glyphicon-remove-circle"
				style="color: white; font-size: 30px;"></span>
		</button>
		<div class="row">
			<div class="col-xs-12" style="height: 30px; margin: 10px 0px;">
				<h4 style="float: left;">
					<a class="btn btn-success glyphicon glyphicon-new-window btn-md thisshareuser" href="javascript:void(0);"> 分享联系人</a> 
				</h4>

				<div class="input-group">
					<input type="text" class="form-control input-sm pull-right cha modalbaseKey" placeholder="查找..." value="${(baseKey)!''}">
					<div class="input-group-btn chazhao" style="top: -1px;">
						<a class="btn btn-sm btn-default glyphicon glyphicon-search modalbaseKetsubmit" style="height: 30px;" href="javascript:void(0);">
						</a>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<div class="modal-body modaltable" style="margin: 10px;">
		<#include "shareuser.ftl"/>
	</div>
</div>