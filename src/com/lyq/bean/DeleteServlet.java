package com.lyq.bean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/DeleteServlet")
/**
 * Servlet implementation class DeleteServlet
 */

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ��ȡͼ��id
		int id = Integer.valueOf(request.getParameter("id"));
		try {
			// �������ݿ�������ע�ᵽ����������
			Class.forName("com.mysql.jdbc.Driver");
			// ���ݿ������ַ���
			String url = "jdbc:mysql://localhost:3306/myclass";
			// ���ݿ��û���
			String username = "root";
			// ���ݿ�����
			String password = "";
			// ����Connection����
			Connection conn = DriverManager.getConnection(url,username,password);
			// ɾ��ͼ����Ϣ��SQL���
			String sql = "delete from tb_book where id=?";
			// ��ȡPreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// ��SQL����еĵ�һ��ռλ����ֵ
			ps.setInt(1, id);
			// ִ�и��²���
			ps.executeUpdate();
			// �ر�PreparedStatement
			ps.close();
			// �ر�Connection
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		// �ض���FindServlet
		response.sendRedirect("found");
	}
}