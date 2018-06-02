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
</html>