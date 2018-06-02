<%@ page language="java" import="java.util.*"  import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎来到登录界面</title>
</head>
<body>
   <%
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String driverName = "com.mysql.jdbc.Driver";         
        String userName = "root";
        String userPwd = "";
        String dbName = "myclass";
        String url1 = "jdbc:mysql://localhost:3306/" + dbName;
        String url2 = "?name=" + userName + "&password=" + userPwd;
        String url3 = "&useUnicode=true&characterEncoding=UTF-8";
        String url = url1 + url2 + url3;
        request.setCharacterEncoding("UTF-8");
        Class.forName(driverName);
        conn = DriverManager.getConnection(url);
        String sql = "select * from student where name=? and password=?";
        pstmt=conn.prepareStatement(sql);
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        pstmt.setString(1, name);
        pstmt.setString(2, password);
        rs = pstmt.executeQuery();
        if(rs.next()) {
            %><center><h1>登陆成功！</h1></center>
              <a href="主班级网页.jsp">返回</a>

        <%}
        else {
            %><center><h1>用户名或密码错误！</h1></center>
              <a href="denglu2.jsp">返回</a>
        <%}
        if(rs != null) {
            rs.close();
        }
        if(pstmt != null) {
            pstmt.close();
        }
        if(conn != null) {
            conn.close();
        }
         
   %>
</body>
</html>