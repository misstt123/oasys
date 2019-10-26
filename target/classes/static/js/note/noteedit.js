
var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[name="content"]', {
					allowFileManager : true
				});
				K('input[name=getHtml]').click(function(e) {
					alert(editor.html());
				});
				K('input[name=isEmpty]').click(function(e) {
					alert(editor.isEmpty());
				});
				K('input[name=getText]').click(function(e) {
					alert(editor.text());
				});
				K('input[name=selectedHtml]').click(function(e) {
					alert(editor.selectedHtml());
				});
				K('input[name=setHtml]').click(function(e) {
					editor.html('<h3>Hello KindEditor</h3>');
				});
				K('input[name=setText]').click(function(e) {
					editor.text('<h3>Hello KindEditor</h3>');
				});
				K('input[name=insertHtml]').click(function(e) {
					editor.insertHtml('<strong>插入HTML</strong>');
				});
				K('input[name=appendHtml]').click(function(e) {
					editor.appendHtml('<strong>添加HTML</strong>');
				});
				K('input[name=clear]').click(function(e) {
					editor.html('');
				});
			});
 
			$(function(){
				 
				//如果是从共享笔记修改进来的话就直接show
				if($("#ctl00_cphMain_ddlType option:selected").text()=='共享笔记'){
					$("#MoreDiv").show();
				}
				
				$("#ctl00_cphMain_ddlType").change(function(){
					var choose=$("#ctl00_cphMain_ddlType option:selected");
					if(choose.text()=='共享笔记'){
						$("#MoreDiv").show();
					}
					else if(choose.text()!='共享笔记')
					{$("#MoreDiv").hide();
					}
	     
				})
				
			$("#ctl00_cphMain_ddlAccount").change(function(){
				var options=$("#ctl00_cphMain_ddlAccount option:selected");
				if(options.val()!="0"){
					$("#ctl00_cphMain_txtMailTo").removeAttr("disabled");
				}else{
					$("#ctl00_cphMain_txtMailTo").attr("disabled",true);
				}
			})
			
			
			
			
			
			
			})
			/*模态框新增联系人*/
			function addvalue(){
				var id_array=new Array();
				$('input[name="id"]:checked').each(function(){
					id_array.push($(this).val());//向数组中添加元素
					var idstr=id_array.join(';');//将数组元素连接起来以构建一个字符串
					$("#ctl00_cphMain_txtReceiver").val(idstr);
				})
				$(".modal-header button").click();
				$('#myModal').modal('hide');
			}
			/*追加到联系人*/
			function addvalue2(){
				var id_array=new Array();
				var  idstr=null;
				$('input[name="id"]:checked').each(function(){
					id_array.push($(this).val());
					idstr=id_array.join(';');
				})
				var org=$("#ctl00_cphMain_txtReceiver").val();
				$("#ctl00_cphMain_txtReceiver").val(org+';'+idstr);	
				$(".close").click();
			}