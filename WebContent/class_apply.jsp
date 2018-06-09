<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<div class="content main">
<form action="选择呈现.jsp" method="get">
<table>
<tr>
<td> 课程:<select  name="course">
<option value="AnalogCircuit">模电</option>
<option	value="DigitalCircuit">数电</option> 
<option value="ComputerArchitecture">计算机组成</option> 
<option	value="HardwareDesign">硬件综合设计</option>
</select></td>
<td>专业：<select	name="major">
<option	value="cs">计科</option>
<option	value="sw">软件</option> 
<option	value="Im">信管</option> 
</select></td> 
<td>班级：<select	name="class_grade">				
<optgroup	label="2017">		
<option	value	="171">171</option>		
<option	value	="172">172</option>
</optgroup>
<optgroup label="2016">	
<option	value="161">161</option>	
<option	value="162">162</option>			
</optgroup>
<optgroup	label="2015">	
<option	value	="151">151</option>		
<option	value	="152">152</option>			
</optgroup>	
</select></td><td>学生数：<input type="num"	name="students_num" min="1" max="120"></td>
</tr>
<tr>
<td>节次：
<select	name="jieci"> 
<option	 value="12"	>12</option> 
<option	 value="34"	>34</option>
 <option value="56"	>56</option> 
 <option value="78"	>78</option>
 <option value="910">9 10</option> 
 </select> 
 </td>
 <td>起始周：<input type="number"name="start_week"	min="1"	max="16"/></td> 
 <td>结束周：<input type="number"	name="end_week"	min="1"	max="16" /></td>
 </tr> <tr><td><button	type="submit">submit</button></td><td>
 <button type="reset">reset</button></td></tr>
 </table> 
 </form>
</div> 
</body>
	    <style>
.footer{background-color:#D19275;text-align:center;padding:15px 10px;;length=400px;margin-top:150px;}</style>
<body>
<div class="footer">信管161班web开发课程设计copyrightEmail:161
</div>
</body>
</html>