<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="plugins/kindeditor/themes/default/default.css" />
		<link rel="stylesheet" href="css/common/box.css" />
		<!-- 等待上传 -->
		<link rel="stylesheet" href="../js/tc.css" />
		<script src="easyui/jquery-1.12.4.js"></script>
		<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
		<script charset="utf-8" src="plugins/kindeditor/kindeditor-min.js"></script>
		<script charset="utf-8" src="plugins/kindeditor/lang/zh_CN.js"></script>
		<title></title>
			<style>
			.panel-heading{
				background-color: #eee;
			}
			.outside{
				border: 0px solid red;
				margin-top: 20px;
			}
			
			.container{
				border-radius: 5px;
				border: 0px solid black;
				border-top: 3px solid #3c8dbc;
				/*margin-left: 0px;*/
				background-color: #FFFFFF;
				max-width: 800px;
				padding-top: 12px;
			}
			.label-back{
				background-color: #6C7B8B;;
				color: white;
			}
			.label-back:hover{
				color: white !important;
			}
			.label {
    display: inline;
    padding: 5px 12px  5px 12px;
    font-size: 75%;
    font-weight: 700;
    line-height: 1;
    color: #fff;
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: .25em;
}

			.la{
				    margin-top: 4px;
				    font-size: 16px;
			}
			.page-header{
				    margin: 0px;
			}
			
			.reciver{
				position: relative;
				top: -27px;
			    float: right;
			    right: 4px;
			    cursor: pointer;
			}
			form {
				margin: 0;
			}
			textarea {
				display: block;
				font-size: 16px;
			}
			#ss .ke-container{
				border-radius: 5px;
				    width: 770px;
			}
			.form-group .btn{
				background-color:  #eee;
				width: 100px;
    			height: 34px;
			}
			#MoreDiv{
				display: none;
				top:5px;
			}
			#ctl00_cphMain_fuAttachment{
				opacity: 0;
			    position: relative;
			    top: -22px;
			}
			.left1,.right1{
				display: inline-block;
			}
			.right1 .btn-default,.left1 .btn-default{
				background-color: #eee;
				
			}
			.bottom1{
				margin-bottom: 20px;
			}
			.reciver a{
				text-decoration: none;
			}
			
		</style>
		<script>
		
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
			/*模态框新增联系人*/
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
				var  idstr=null;
				$('input[name="id"]:checked').each(function(){
					id_array.push($(this).val());
					idstr=id_array.join(';');
				})
				
				var org=$("#ctl00_cphMain_txtReceiver").val();
				$("#ctl00_cphMain_txtReceiver").val(org+';'+idstr);	
				$(".close").click();
				
			}

			$(function(){
				
				
				$("#ctl00_cphMain_ddlType").change(function(){
					var choose=$("#ctl00_cphMain_ddlType option:selected");
					if(choose.val()==2){
						$("#MoreDiv").show();
					}
					else if(choose.val()!=2)
					{
						$("#MoreDiv").hide();
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
		</script>
	</head>
	<body class="panel-heading ">
	
	</body>

</html>
