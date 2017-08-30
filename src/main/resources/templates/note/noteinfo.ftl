<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style>
		.row{
			padding:3px 0px 10px 16px;
			font-size: 15px;
		}
		.box-header {
			border-bottom: 1px solid #f4f4f4;
			font-size: 20px;
		}
		.box-body .info{
			border-bottom: 1px solid #f4f4f4;
		}
		
		.box-body .message img{
			width: 200px;
			height: 150px;
		}
		.box-body .little{
			color: #999;
    		font-size: 13px;
		}
		
		
	</style>
	</head>
	<body>
		<div class="row ">
			<div class="col-md-9 ">
				<div class="box box-primary ">
					<div class=" box-header ">
						<h3 class="box-title">查看</h3>
					</div>
					<div class="box-body">
						<div class="info">
							<h3>标题</h3>
							
							<h5 class="little">
								<span >创建：xxx</span>
								<span class="pull-right">时间</span>
							</h5>
						</div>
						<div class="message">
							<span>
								dsfa
								<div>
									<img src="../img/3.jpg" />
								</div>
								<hr />
								<a href="#">
									<span class="glyphicon glyphicon-paperclip">下载附件</span>
								</a>
							</span>
							<hr />
						</div>
					</div>
					<div class="box-footer">
						<div class="pull-right">
							<a id="ctl00_cphMain_lnbDraft" class="btn btn-default glyphicon glyphicon-print">打印</a>
							<a id="ctl00_cphMain_lnbSend" class="btn btn-primary glyphicon glyphicon-edit">编辑</a>	
						</div>
						<a class="btn btn-default">
							<span class="glyphicon glyphicon-chevron-left"></span>
							返回
						</a>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
