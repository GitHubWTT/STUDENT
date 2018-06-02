<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
.header{background-color:#D19275;padding:50px;text-align:center;}</style>
<body>
<div class="header">
信管161博学而笃志，却问而近思.
</div>
</body>
<style>
/* stytle of top navi*/
.topnavi{overflow:hidden;background-color:#333;}
.topnavi a {display:block;text-decoration:none;color:#f2f2f2;float:left;
/* all in one line*/padding:14px;}
.topnavi a:hover{background-color:#2691E;color:green;}
/*style of main content*/</style>
<body>
<div class="topnavi">
<a href="www.gzu.edu.cn">首页</a>
<a href="www.gzu.edu.cn/">班级情况</a>
<a href="class_apply.jsp">学生信息</a>
<a href="index.jsp">成绩查询</a>
</div>
</body>
<form id="form1" name="form1" method="post"action="提交信息写入数据库.jsp" onsubmit="return check(this);">
<div align="center">
 <table width="24%" border="0" hight="50%">
   <tr>
    <td width="36%"><div align="center";>用户名：</div></td>
    <td width="64%">
      <label>
      <div align="center">
        <input type="text" name="name"/>
      </div></label>
    </td>
   </tr>
   <tr>
    <td width="36%"><div align="center">学号：</div></td>
    <td width="64%">
      <label>
      <div align="center">
        <input type="type" name="num"/>
      </div></label>
    </td>
   </tr>
<div align="center">
 <table width="23%" border="0">
   <tr>
    <td width="36%"><div align="center">性别：</div></td>
    <td width="64%">
      <label>
      <div align="center">
        <input type="text" name="sex"/>
      </div></label>
    </td>
   </tr>
   <tr>
    <td width="36%"><div align="center">密码：</div></td>
    <td width="64%">
      <label>
      <div align="center">
        <input type="type" name="password"/>
      </div></label>
    </td>
   </tr>
   <tr>
     <td colspan="2">
       <label>
         <div align="center">
           <input type="submit" name="Submit" value="提交"/>
           </div></label>
     </td>
    </tr>
       <tr>
     <td colspan="2">
       <label>
         <div align="center">
           <input type="submit" name="zhuce" value="登录"/>
           </div></label>
     </td>
    </tr>
 </table></div></form>
 <style>
.footer{background-color:#D19275;text-align:center;padding:15px 10px;
margin-top:150px;
}</style>
<body>
<div class="footer">信管161班web开发课程设计copyrightEmail:161
</div>
</body>