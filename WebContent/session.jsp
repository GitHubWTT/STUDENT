<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
  request.setCharacterEncoding("utf-8");
  String name= request.getParameter("name");
  String num= request.getParameter("num");
  session.setAttribute("name",name);
  session.setAttribute("num",num);
 %>
<div align="center">
<form id="form1" name="form1" method="post" action="注册结果.jsp">
  <table width="28%" border="0">
  <tr>
    <td>用户名：</td>
    <td><%=name %></td>
  </tr>
  <tr>
    <td>学号：</td>
    <td><%=num %></td>
   </tr>
   <tr>
     <td>年龄：</td>
     <td><label>
       <input type="text" name="age"/>
     </label></td>
   </tr>
   <tr>
     <td colspan="2"><label>
     <div align="center">
      <input type="submit" name="Submit" value="提交"/>
     </div>
     </label></td>
     </tr>
</table>
</form>