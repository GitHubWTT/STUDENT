<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
    <%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
    %>  
      
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
    <html>  
      <head>  
        <base href="<%=basePath%>"> 
          <title>注册页面</title>  
       <style>
.header{background-color:#D19275;padding:50px;text-align:center;}
.header{font-size:60px;filter:glow(color=skyblue,direction=2);font-family:华文行楷;}
.h2{font-size:30px;filter:glow(color=skyblue,direction=2);font-family:华文行楷;}
</style>
<body>
<div class="header">
<tr>
<td>贵州大学</td>
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
<a href="www.gzu.edu.cn/">班级情况</a>
<a href="class_apply.jsp">学生信息选择</a>
<a href="login.jsp">用户登录</a>
</div>   
  <body>    
          
       
          
        <meta http-equiv="pragma" content="no-cache">  
        <meta http-equiv="cache-control" content="no-cache">  
        <meta http-equiv="expires" content="0">      
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
        <meta http-equiv="description" content="This is my page">  
        <!-- 
        <link rel="stylesheet" type="text/css" href="styles.css"> 
        -->  
      </head>  
        
      <body>  
        <form action="UserServlet?method=register" method="post">  
            <table align="center">  
                <tr>  
                    <td colspan="2">注册窗口</td>  
                </tr>  
                <tr>  
                    <td>用户名：</td>  
                    <td><input type="text" name="username" /></td>  
                </tr>  
                <tr>  
                    <td>密码：</td>  
                    <td><input type="password" name="password1" /></td>  
                </tr>  
                <tr>  
                    <td>确认密码：</td>  
                    <td><input type="password" name="password2" /></td>  
                </tr>               
                <tr>  
                    <td colspan="2"><input type="submit" value="注册" /> <a href="login.jsp">返回</a></td>  
                </tr>  
            </table>  
        </form>  
    </body>  
    <style>
.footer{background-color:#D19275;text-align:center;padding:15px 10px;;length=400px;margin-top:150px;}</style>
<body>
<div class="footer">信管161班web开发课程设计copyrightEmail:161
</div>
</body>
    </html> 
