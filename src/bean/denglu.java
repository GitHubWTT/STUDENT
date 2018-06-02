package bean;
import java.io.IOException; 
import javax.servlet.ServletConfig; 
import javax.servlet.ServletException; 
import javax.servlet.ServletRequest; 
import javax.servlet.ServletResponse; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;
 
public class denglu implements javax.servlet.Servlet{ 
 public void doPost(HttpServletRequest request,HttpServletResponse response)
 throws ServletException,IOException{
 String userName = request.getParameter("username");//取得用户名
 String password = request.getParameter("password");//取得密码
 response.sendRedirect("index.jsp");
 }
 
 public void destroy() { 
 }
 
 public ServletConfig getServletConfig() {
  return null;
 }
 
 public String getServletInfo() {
  return null;
 }
 
 public void init(ServletConfig arg0) throws ServletException {  
 }
 
 public void service(ServletRequest request, ServletResponse response)
   throws ServletException, IOException {
  HttpServletRequest rq = (HttpServletRequest)request;
  HttpServletResponse rs = (HttpServletResponse) response;
  doPost(rq,rs);
 
 }
}