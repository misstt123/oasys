<style type="text/css">
#shareModal .modal-dialog {
	width: 500px;
	top:20%;
}

#shareModal .modal-body .icon {
	height: 80px;
	width: 80px;
	margin: 20px auto;
	border-radius: 50%;
	color: #aad6aa;
	border: 3px solid #d9ead9;
	text-align: center;
	font-size: 44px;
}

#shareModal .modal-body .icon .glyphicon {
	font-size: 46px;
	top: 14px;
}

#shareModal .modal-p {
	margin: 20px auto;
}

#shareModal .modal-body .modal-p h2 {
	text-align: center;
}

#shareModal .modal-body .modal-p p {
	text-align: center;
	color: #666;
	font-size: 16px;
	padding-top: 8px;
	font-weight: 300;
}

#shareModal .modal-p .btn {
	margin-left: 40%;
	width: 100px;
	height: 40px;
}

#shareModal .modal-error .icon {
	color: #f27474;
	border: 3px solid #f27474;
}
</style>
<button class="close closemodal" data-dismiss="modal"
			style="display: block; margin: -52px -78px 0 0;; border-radius: 60%;">
			<span class="glyphicon glyphicon-remove-circle"
				style="color: white; font-size: 30px;"></span>
		</button>
<div class="modal-body modal-success">
	<div class="icon">
		<span class="glyphicon glyphicon-ok"></span>
	</div>
	<div class="modal-p">
		<h2>操作成功</h2>
		<!--<p style="">已回复</p>-->
		<div class="modal-p">
			<button type="button" class="btn btn-primary successToUrl closemodal" data-dismiss="modal">确定</button>
		</div>
	</div>
</div>