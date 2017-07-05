
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="addbook.BookBean"%>
<!DOCTYPE html>
<html>
<head>
<meta chaeset="UTF-8">
<title>用户图书信息列表</title>
<style type="text/css">
td {
	font-size: 14px;
	padding: 5px;
   }
</style>
</head>
<body>
<hl align="center">用户图书信息列表</hl>
<hr>
	<table align="center" border="1" width="400">
		<tr align="center" style="font-weight: bold;">
			<td>书名</td>
			<td>图书简介</td>
		</tr>
		<%
		List<BookBean> list = (List<BookBean>application.getAttribute("users");
		if(list != null) {
			for(BookBean user : list) {
		%>
				<tr align="center">
						<td><%=user.getBookName()%></td>
						<td><%=user.getIntroduction()%></td>
				</tr>
		<%
			}
		}
		%>
		<tr>
			<td align="center" colspan="10">
				<a href="index2.jsp">继续添加图书</a>
			</td>
		</tr>
	</table>
</body>
</html>