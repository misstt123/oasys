<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>登陆</title>
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
		<style type="text/css">
			.login-logo {
				font-size: 35px;
				margin-bottom: 25px;
				font-weight: 300;
			}
			
			.texta-c {
				text-align: center;
			}
			
			.longin-box-body {
				background: #fff;
				padding: 20px;
				border-top: 0;
				color: #666;
			}
			
			.login-box-msg {
				margin: 0;
				text-align: center;
				padding: 0 20px 20px 20px;
			}
		</style>
	</head>

	<body style="background: url(images/user/03.jpg) no-repeat; background-size: 100%;">

		<div class="" style="width: 360px;margin: 7% auto;z-index: 25;">
			<div class="login-logo texta-c" style="color: #FFF">阿翔动力</div>
			<div class="longin-box-body" style="border-radius:10px;box-shadow: 1px 1px 1px 1px #333;">
				<p class="login-box-msg">让办公更加轻松有趣！</p>
				<form>
					<div class="form-group has-feedback">
						<input name="userName" type="text" class="form-control" placeholder="用户名">
						<span class="glyphicon glyphicon-user form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input name="password" type="password" class="form-control" placeholder="密码">
						<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					</div>
					<div class="form-group">
						<input name="txtCode" type="text" id="txtCode" class="form-control" placeholder="验证码" style="width:210px; display:inline;">
						<a title="看不清？点击换一张图片" href=""><img src="images/user/1.jpg" alt="" style="height:32px; margin-top:-3px; width:106px;"></a>
					</div>
					<div class="form-group">
						<input type="submit" name="btnLogin" value="登录" class="btn btn-primary btn-block">
					</div>
				</form>
			</div>
		</div>

	</body>
	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</html>