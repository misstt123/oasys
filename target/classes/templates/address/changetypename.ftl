<!-- 模态框（Modal） -->
<div class="modal fade" id="typenameModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog" style="margin-top: 10%";>
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					<span class="glyphicon glyphicon-remove-circle" style="font-size: 26px;"></span>
				</button>
				<h4 class="modal-title" id="myModalLabel">
					修改分类名称：
				</h4>
			</div>
			<div class="modal-body" >
				<input class="form-control" name="" value="">
				<!-- <textarea rows="8" cols="78" id="comment"></textarea> -->
			</div>
			<input type="hidden" id="commentid"/>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" id="commentsave" data-dismiss="modal">提交	</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="changetypenameModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-dialog" style="margin-top: 10%";>
	<div class="modal-content" style="min-width: 760px;">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
				<span class="glyphicon glyphicon-remove-circle" style="font-size: 26px;"></span>
			</button>
			<h4 class="modal-title" id="myModalLabel">
				移动分类：
			</h4>
		</div>
		<div class="modal-body" >
			<p style="display: inline-block;">将联系人
				<a href="javascript:void(0);" id="thischangetype"
						class="othershow"
						thisdid=""
						title="信息" 
						thistel="" 
						thissex="" 
						thisemail=""
						thiscompany=""  style="color:#337ab7;line-height: 40px;">
					<img class="img-circle" id="thischangetypeimg" src="images/touxiang/timg.jpg" alt="联系人" style="width: 24px;height:24px;"/>
					<span id="thischangetypename"></span>,<span id="thischangetypetel"></span>
				</a>移动到:
			</p>
			<div class="col-md-6 form-group" style="float:right;">
				<select class="form-control" name="catalogName" id="thisselectvalue">
					<option value="">外部联系人</option>
					<#list catalogs as ca>
						<option value="${ca}">${ca}</option>
					</#list>
				</select>
			</div>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			<button type="button" class="btn btn-primary"  data-dismiss="modal" id="thischangetypesubmit">提交	</button>
		</div>
	</div><!-- /.modal-content -->
</div><!-- /.modal -->
</div>
<script type="text/javascript" src="js/usershow.js"></script>