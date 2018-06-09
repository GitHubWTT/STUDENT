<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.*"%>
<%@page import="com.lyq.bean.*"%><html>
 <style>
.header{background-color:#D19275;padding:50px;text-align:center;}
.header{font-size:60px;filter:glow(color=skyblue,direction=2);font-family:华文行楷;}
.h2{font-size:30px;filter:glow(color=skyblue,direction=2);font-family:华文行楷;}
</style>
<body>
<div class="header">
<tr>
<td>
贵州大学</td>
</tr>
<tr>
<td>信管161</td></tr>
</div>
</body>
<style>
/* stytle of top navi*/
.topnavi{overflow:hidden;background-color:#333;}
.topnavi a {display:block;text-decoration:none;color:#f2f2f2;float:left;
/* all in one line*/padding:14px;}
.topnavi a:hover{background-color:#2691E;color:green;}
/*style of main content*/</style>
 <div class="topnavi">
<a href="主班级网页.jsp">首页</a>
<a href="http://www.gzu.edu.cn/">学校主页</a>
<a href="http://eie.gzu.edu.cn/">学院主页</a>
<a href="login.jsp">用户登录</a>
<a href="class_apply.jsp">学生信息选择</a>
<a href="FindServlet">显示</a>
<a href="tianjia.jsp">增加</a>
<a href="found">修改</a>
</div>  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>班级管理</title>
<style type="text/css">
	td{font-size: 12px;}
	h2{margin: 0px}
</style>
</head>
<body>
<table align="center" width="450" border="1" height="180" bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
	<tr bgcolor="white">
		<td align="center" colspan="5">
			<h2>所有书本信息</h2>
		</td>
	</tr>
	<tr align="center" bgcolor="#e1ffc1" >
		<td><b>ID</b></td>
		<td><b>名称</b></td>
		<td><b>价格</b></td>
		<td><b>数量</b></td>
		<td><b>作者</b></td>
	</tr>
	<%
		List<Book> list = (List<Book>)request.getAttribute("list");
		for(Book book: list){
	%>
	<tr align="center" bgcolor="white">
		<td><%=book.getId()%></td>
		<td><%=book.getName()%></td>
		<td><%=book.getPrice()%></td>
		<td><%=book.getbookCount()%></td>
		<td><%=book.getauthor()%></td>
	</tr>
	<%	
		}
	%>
	<tr>
		<td align="center" colspan="5" bgcolor="white">
			<%=request.getAttribute("bar")%>
		</td>
	</tr>
</table>
	<style>
.footer{background-color:#D19275;text-align:center;padding:15px 10px;;length=400px;margin-top:150px;}</style>
<body>
<div class="footer">信管161班web开发课程设计copyrightEmail:161
</div>
</body>
</html>