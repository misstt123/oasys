$(function(){
				$(".mail").change(function(){
					var search_str = /^[\w\-\.]+@[\w\-\.]+(\.\w+)+$/;
					 var email_val = $(this).val();
					 if(!search_str.test(email_val)){       
					     alert("邮箱格式不正确，请重新填写 !");
					     $(this).focus();
					     
					 }
				})
			})