<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加图书简介</title>
<style type="text/css">
ul { list-style: none; }
li {
	padding: 5px;
	font-size: 14px;
    }
</style>
<script type="text/javascript">
function check(form) {
	with(form) {
		if(bookname.vaule == "") {
			alert("书名不能为空！");
			return false;
		}
		if(introduction.value =="") {
			alert("图书简介不能为空！");
			return false;
		}
	}
}
</script>
</head>
<body>
	<form action="Introduction" method="post" onsubmit="return check(this);">