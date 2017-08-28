function addvalue(){
				
				var id_array=new Array();
				$('input[name="id"]:checked').each(function(){
					
					id_array.push($(this).val());//向数组中添加元素
					var idstr=id_array.join(';');//将数组元素连接起来以构建一个字符串
					$("#ctl00_cphMain_txtReceiver").val(idstr);
					
				})
				
				$(".close").click();
				
			}
			/*追加到联系人*/
			function addvalue2(){
				
				var id_array=new Array();
				alert("jingq")
				var  idstr=null;
				$('input[name="id"]:checked').each(function(){
					id_array.push($(this).val());
					idstr=id_array.join(';');
				})
				
				var org=$("#ctl00_cphMain_txtReceiver").val();
				$("#ctl00_cphMain_txtReceiver").val(org+';'+idstr);	
				$(".close").click();
				
			}
