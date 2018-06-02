<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import = "java.sql.*"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
   request.setCharacterEncoding("utf-8");
   String name= request.getParameter("name");
   String num= request.getParameter("num");
   String solution=request.getParameter("sex");
%>
<form id="form1" method="post" action="">
 <table width="28%" border="0">
   <tr>
     <td colspan="2"><div align="center"><strong>用户登录</strong></div></td>
   </tr>
   <tr>
     <td width="49%"><div align="left">用户名：</div></td>
     <td width="51%"><label>
     <div align="left"><%=name %></div>
     </label></td>
   </tr>
   <tr>
     <td width="49%"><div align="left">学号：</div></td>
     <td width="51%"><label>
     <div align="left"><%=num%></div>
     </label></td>
   </tr>
   <tr>
     <td><label>
       <div align="left">性别；</div>
     </label></td>
     <td><div align="left"><%=solution%></div></td>
   </tr>
   </table></form>
>
<body>
<%
	try {
		// 加载数据库驱动，注册到驱动管理器
		Class.forName("com.mysql.jdbc.Driver");
		// 数据库连接字符串
		String url = "jdbc:mysql://localhost:3306/test";
		// 数据库用户名
		String username = "root";
		// 数据库密码
		String password = "";
		// 创建Connection连接
		Connection conn = DriverManager.getConnection(url,username,password);

		// 判断 数据库连接是否为空
		if(conn != null){
			// 输出连接信息
			out.println("数据库连接成功！");
			// 关闭数据库连接
			conn.close();
		}else{
			// 输出连接信息
			out.println("数据库连接失败！");
		}
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
%>

</body>