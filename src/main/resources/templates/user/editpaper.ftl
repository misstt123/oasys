<div class="modal fade" id="notepaper" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="modalclose close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">编辑您的便签</h4>
			</div>
			<form action="writep" method="post" onsubmit="return check();">
			<div class="modal-body">
				<!--錯誤信息提示  -->
					<div class="alert alert-danger alert-dismissable" style="display:none;" role="alert">
						错误信息:<button class="thisclose close" type="button">&times;</button>
						<span class="error-mess"></span>
					</div>
				
				<input type="text" class="form-control noteid" name="notepaperId"  style="display:none;">
					<div class=" form-group">
						<label class="control-label">标题</label>
						 <input type="text" class="form-control patitle control" name="title" placeholder="请输入标题">
					</div>
					<div class=" form-group">
						<label class="control-label">内容</label>
						<textarea class="form-control pacontent control" style="min-height: 100px;" name="concent"></textarea>
					</div>
			
			</div>
			<div class="modal-footer">
				<input class="btn btn-primary" id="save" type="submit" value="保存" />
			</div>
			</form>
		</div>
	</div>
</div>