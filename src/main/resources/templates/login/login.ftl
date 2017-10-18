<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
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

    </style>
</head>

<body>
<div class="cotn_principal">
  <div class="cont_centrar" style="top:10%;">
    <div class="cont_login">
      <div class="cont_forms cont_forms_active_login" style="height: 480px;width: 400px;border-radius: 15px;">
        <div class="cont_img_back_"> <img src="images/timg.jpeg" alt="背景图片" /> </div>
        <form action="index" >
        <div class="cont_form_login" style="display: block;opacity: 1;width: 400px;">
        	 <div class="alert alert-danger alert-dismissible"  role="alert" style="position: absolute;padding: 11px;">
          	错误信息: <span>输入密码不正确!</span><button type="button" class="close" data-dismiss="alert" aria-label="Close" style="right:0px;"><span aria-hidden="true">&times;</span></button>
          </div>
          <h2>LOGIN</h2>
          <input type="text" placeholder="UserName" autofocus="autofocus"/>
          <input type="password" placeholder="Password" style="margin-bottom: 20px;"/>
           <div>
		        <div id="captcha" style="width:260px;margin-left: 10px;">
		           <!--  <p id="wait" class="show">正在加载验证码......</p> -->
		        </div>
		    </div>
		    <br>
		    <div id="btn" class="btn btn_login">LOGIN</div>
         <!--  <button class="btn_login" onclick="javascript:window.location.href=''">LOGIN</button><br> -->
        </div>
        </form>
      </div>
     <div style="border: 1px solid transparent;">
      	<p style="margin-top: 550px;font-weight: 400;color: #757575;font-size: 22px;letter-spacing:1px ;">欢迎使用OA办公自动化系统</p>
      </div>
    </div>
    
  </div>
</div>
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gt.js"></script>
<script>
    var handler = function (captchaObj) {
        captchaObj.appendTo('#captcha');
        captchaObj.onReady(function () {
            $("#wait").hide();
        });
        $('#btn').click(function () {
            var result = captchaObj.getValidate();
            if (!result) {
                return alert('请完成验证');
            }
            $.ajax({
                url: 'verifyCaptchaCode',
                type: 'POST',
                dataType: 'json',
                data: {
                    username: $('#username2').val(),
                    password: $('#password2').val(),
                    geetest_challenge: result.geetest_challenge,
                    geetest_validate: result.geetest_validate,
                    geetest_seccode: result.geetest_seccode
                },
                success: function (data) {
                    if (data.status === 'success') {
                        alert('登录成功');
                    } else if (data.status === 'fail') {
                        alert('登录失败，请完成验证');
                        captchaObj.reset();
                    }
                }
            });
        })
        // 更多前端接口说明请参见：http://docs.geetest.com/install/client/web-front/
    };

    $.ajax({
        url: "startCaptcha?t=" + (new Date()).getTime(), // 加随机数防止缓存
        type: "get",
        dataType: "json",
        success: function (data) {

            // 调用 initGeetest 进行初始化
            // 参数1：配置参数
            // 参数2：回调，回调的第一个参数验证码对象，之后可以使用它调用相应的接口
            initGeetest({
                // 以下 4 个配置参数为必须，不能缺少
                gt: data.gt,
                challenge: data.challenge,
                offline: !data.success, // 表示用户后台检测极验服务器是否宕机
                new_captcha: data.new_captcha, // 用于宕机时表示是新验证码的宕机

                product: "popup", // 产品形式，包括：float，popup
                width: "260px"
                // 更多前端配置参数说明请参见：http://docs.geetest.com/install/client/web-front/
            }, handler);
        }
    });
</script>
</body>
</html>
