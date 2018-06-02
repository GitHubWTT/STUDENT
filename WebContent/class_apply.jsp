<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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
<option	value="dm">数媒</option> 
<option	value="sw">软件</option> 
<option	value="is">信息</option> 
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
 <option value="1214">中午</option> 
 <option value="56"	>56</option> 
 <option value="78"	>78</option>
 <option value="910">910</option> 
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
</html>