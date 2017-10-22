<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<link href="images/favicon1.ico" rel="icon" type="image/x-icon"/>
<link href="images/favicon1.ico" rel="shortcut icon" type="image/x-icon"/>
<title>OA办公自动化系统</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/login.css">
 <style>

        .inp {
            border: 1px solid #cccccc;
            border-radius: 2px;
            padding: 0 10px;
            width: 278px;
            height: 40px;
            font-size: 18px;
        }
/* 
        .btn {
            display: inline-block;
            box-sizing: border-box;
            border: 1px solid #cccccc;
            border-radius: 2px;
            width: 100px;
            height: 40px;
            line-height: 40px;
            font-size: 16px;
            color: #666;
            cursor: pointer;
            background: white linear-gradient(180deg, #ffffff 0%, #f3f3f3 100%);
        } */

        .btn:hover {
            background: #3c83a5;
            color:#fff;
        } 

        #captcha {
            width: 300px;
            display: inline-block;
        }

        label {
            vertical-align: top;
            display: inline-block;
            width: 80px;
            text-align: right;
        }

        #wait {
            text-align: left;
            color: #666;
            margin: 0;
        }
		.thisimg:HOVER {
			cursor: pointer;
		}
		.test:FOCUS {
		border-color: #66afe9 !important;
	}
	.modal-dialog {
				width: 500px;
			}
			
			.modal-body .icon {
				height: 80px;
				width: 80px;
				margin: 20px auto;
				border-radius: 50%;
				color: #aad6aa;
				border: 3px solid #d9ead9;
				text-align: center;
				font-size: 44px;
			}
			
			.modal-body .icon .glyphicon {
				top: 11px;
			}
			
			.modal-p {
				margin: 20px auto;
			}
			
			.modal-body .modal-p h2 {
				text-align: center;
			}
			
			.modal-body .modal-p p {
				text-align: center;
				color: #666;
				font-size: 16px;
				padding-top: 8px;
				font-weight: 300;
			}
			
			.modal-p .btn {
				width: 100px;
				height: 40px;
			}
			.modal-error .icon{
				color: #f27474;
				border: 3px solid #f27474;
    </style>
</head>

<body>
<div class="cotn_principal">
  <div class="cont_centrar" style="top:5%;">
    <div class="cont_login">
      <div class="cont_forms cont_forms_active_login" style="height: 480px;width: 400px;border-radius: 15px;">
        <div class="cont_img_back_"> <img src="images/timg.jpeg" alt="背景图片" /> </div>
        <form action="logins" method="post" onsubmit="return check();">
        <div class="cont_form_login" style="display: block;opacity: 1;width: 400px;">
        	 <div class="alert alert-danger alert-dismissible"  role="alert" style="position: absolute;padding: 11px;display: none">
	          	错误信息: <span class="error-mess"></span>
	          	<button type="button" class="close" data-dismiss="alert" aria-label="Close" style="right:0px;"><span aria-hidden="true">&times;</span></button>
	          </div>
          <h2>LOGIN</h2>
          <input type="text" placeholder="UserName/TeL" autofocus="autofocus" value="${(userName)!''}" name="userName" class="userName test"/>
          <input type="password" placeholder="Password" value="" name="password" class="password test"/>
           <input type="text" placeholder="Code" style="margin-bottom: 20px;width:152px" name="code" class="code test"/>
           <div class="login-img" style="display:inline-block">
					<img class="thisimg" onclick="this.src='captcha?r'+Date.now()" src="captcha" alt="验证码" style="width: 100px;height: 42px;border-radius: 3px;">
				</div>
		    <br>
       <button class="btn_login btn" type="submit" >LOGIN</button>
       
        </div>
        </form>
      </div>
     <div style="border: 1px solid transparent;">
      	<p style="margin-top: 550px;font-weight: 400;color: #757575;font-size: 22px;letter-spacing:1px ;">欢迎使用OA办公自动化系统</p>
      </div>
    </div>
    
  </div>
</div>
<div class="modal fade in" id="mymodal" data-backdrop="static" >
			<div class="modal-dialog" style="top: 20%;">
				<div class="modal-content">
					<div class="modal-body modal-error">
						<div class="icon">
							<span class="glyphicon">!</span>
						</div>
						<div class="modal-p">
							<!--<h2 style="text-align: center;">提示信息</h2>-->
							<p class="modal-error-mess">该用户已经登录了，是否继续 ？</p>
							<div class="modal-p">
								<button type="button" class="btn btn-default" data-dismiss="modal" >取消</button>
								<button type="button" class="btn btn-primary contiue" data-dismiss="modal">继续</button>
							</div>
						</div>
					</div>

				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<#if hasmess??>
<script type="text/javascript">
	$(function(){
		$('#mymodal').modal('show');
	})
</script>
</#if>
<#if errormess??>
<script>
$(function(){
	console.log("fdsfdsfsfasdf");
	$('.error-mess').text('${errormess}');
	$('.alert-danger').css('display','block');
})
</script>
</#if>
<script type="text/javascript">
 $('.test').on('click',function(){
	$(this).css('border',"1px solid transparent");
}) 
$('.contiue').on('click',function(){
		location.href="/handlehas";
})


function check() {
	var userName=$('.userName').val().trim();
	var password=$('.password').val().trim();
	var code=$('.code').val().trim();
	console.log(userName);
	console.log(password);
	console.log(code);
	var count=1;
	if(userName==null || userName==""){
		$('.error-mess').text("登录账号不能为空!");
		$('.alert-danger').css('display','block');
		$('.userName').css('border-color',"#a94442");
		count=0;
		return false;
	}
	if(password==null || password==""){
		$('.error-mess').text("登录密码不能为空!");
		$('.alert-danger').css('display','block');
		$('.password').css('border-color',"#a94442");
		count=0;
		return false;
	}
	if(code==null || code==""){
		$('.error-mess').text("验证码不能为空!");
		$('.alert-danger').css('display','block');
		$('.code').css('border-color',"#a94442");
		count=0;
		return false;
	}
	console.log(count);
	return true;
}
	
</script>
</body>
</html>
