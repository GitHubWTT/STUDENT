<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  String course=request.getParameter("course");
    String major=request.getParameter("major");
    String grade=request.getParameter("class_grade");
    String num=request.getParameter("students_num");
    String course_time=request.getParameter("jieci");
    String swk=request.getParameter("start_week");
    String ewk=request.getParameter("end_week");
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <style>
.header{background-color:#D19275;padding:50px;text-align:center;}
.header{font-size:60px;filter:glow(color=skyblue,direction=2);font-family:华文行楷;}
.h2{font-size:30px;filter:glow(color=skyblue,direction=2);font-family:华文行楷;}
</style>
<body>
<body background="1.jpg">
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

<body>

<div class="content main">课程为： <%= course %><br>
专业为：<%= major %><br>
班级为：<%= grade %><br>
人数为：<%= num %>人<br>
课程时间为：<%= course_time %>节<br>
起始周为：<%= swk %>周<br>
结束周为：<%= ewk %>周<br>
</div>
</body>
	    <style>
.footer{background-color:#D19275;text-align:center;padding:15px 10px;;length=400px;margin-top:150px;}</style>
<body>
<div class="footer">信管161班web开发课程设计copyrightEmail:161
</div>
</body>
</html>