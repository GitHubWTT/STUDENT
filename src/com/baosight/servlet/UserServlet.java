package com.baosight.servlet;

import java.io.IOException;
import java.io.PrintWriter; 

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.baosight.bean.UserBean;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		 String method = request.getParameter("method"); 
		 request.setCharacterEncoding("utf-8");  
	     //response.setContentType("textml;charset=utf-8"); 
	     response.setCharacterEncoding("utf-8"); 
		 PrintWriter out=response.getWriter();
//System.out.println(method);
	        if("login".equals(method)){//µÇÂ¼  
	            String username = request.getParameter("username");  
	            String password = request.getParameter("password");  
	             if(username==null||"".equals(username.trim())||password==null||"".equals(password.trim())){  
	                  out.println("The username of password can not be empty.");  
	                  //response.sendRedirect("login.jsp");  
	                  return;  
	              }  
	             UserBean userBean = new UserBean();  
	              boolean isValid = userBean.valid(username,password);  
	              if(isValid){  
	                  out.println("login successful.");  
	                  request.getSession().setAttribute("username", username);  
	                  response.sendRedirect("welcome.jsp");  
	                  return;  
	              }else{  
	                  out.println("username or password is wrong.");
	                 // <a href="login.jsp">·µ»Ø</a>;	                  
	                  //response.sendRedirect("login.jsp");  
	                  return ;  
	              }  
	        }else if("logout".equals(method)){//ÍË³öµÇÂ¼  
	           out.println("logout.");  
	            request.getSession().removeAttribute("username");  
	            response.sendRedirect("login.jsp");  
	            return;  
	        }else if("register".equals(method)){//×¢²á  
	             String username = request.getParameter("username");  
	              String password1 = request.getParameter("password1");  
	              String password2 = request.getParameter("password2");  
	                
	              if(username==null||"".equals(username.trim())||password1==null||"".equals(password1.trim())||password2==null||"".equals(password2.trim())||!password1.equals(password2)){  
	                  out.println("The username of password can not be empty.");  
	                  //response.sendRedirect("register.jsp");  
	                  return;  
	              }  
	              UserBean userBean = new UserBean();  
	              boolean isExit = userBean.isExist(username);  
	              if(!isExit){  
	                  userBean.add(username, password1, password2);  
	                  out.println("register successfully,please login.");  
	                  response.sendRedirect("login.jsp");  
	                  return;  
	              }else{  
	              out.println("The username has already existed.");  
	                  //response.sendRedirect("register.jsp"); 
	                  return;  
	              }  
	        }  
	}
}

	      
	  


	


