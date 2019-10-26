		function addvalue(){
				
				var id_array=new Array();
				$('input[name="id"]:checked').each(function(){
					
					var $name=$(this).parents(".col-xs-2").siblings(".na").text();
					console.log($name);
					id_array.push($name);//向数组中添加元素
					var idstr=id_array.join(';');//将数组元素连接起来以构建一个字符串
					$("#recive_list").val(idstr);
					
				})
				
				$(".close").click();
				
			}
			/*追加到联系人*/
			function addvalue2(){
				
				var id_array=new Array();
				
				var  idstr=null;
			
				$('input[name="id"]:checked').each(function(){
					var $name=$(this).parents(".col-xs-2").siblings(".na").text();
					id_array.push($name);
					idstr=id_array.join(';');
				})
				
				var org=$("#recive_list").val();
				$("#recive_list").val(org+';'+idstr);	
				$(".close").click();
				
			}
