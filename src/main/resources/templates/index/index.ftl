<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
	项目工程初始化
	<#list rows as row>
		${row.title}
	</#list>
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
  	<script src="js/bootstrap.min.js"></script>
</body>
</html>