package com.baosight.bean;


import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.sql.Statement;  
public class DBAcess {
		private String driver="com.mysql.jdbc.Driver";
		// ���ݿ������ַ���
		 private String url = "jdbc:mysql://localhost:3306/myclass";
		// ���ݿ��û���
		private String username = "root";
		// ���ݿ�����
		private String password = "";
		// ����Connection����
		private Connection conn ;
	    private Statement stm;  
	    private ResultSet rs;  
	    //��������
	    public boolean createConn() {  
	        boolean b = false;  
	        try {  
	            Class.forName(driver);// �������ݿ���������  
	            conn = DriverManager.getConnection(url, username, password);  
	            b = true;  
	        } catch (SQLException e) {  
	            // TODO Auto-generated catch block  
	            e.printStackTrace();  
	        }// ��ȡ����  
	        catch (ClassNotFoundException e) {  
	            // TODO Auto-generated catch block  
	            e.printStackTrace();  
	        }  
	        return b;  
	    }  
	    //�޸�  
	    public boolean update(String sql){  
	        boolean b = false;  
	        try {  
	            stm = conn.createStatement();  
	            stm.execute(sql);  
	            b = true;  
	        } catch (SQLException e) {  
	            // TODO Auto-generated catch block  
	            e.printStackTrace();  
	        }  
	        return b;  
	    }  
	    //��ѯ  
	    public void query(String sql){  
	        try {  
	            stm = conn.createStatement();  
	            rs = stm.executeQuery(sql);  
	        } catch (SQLException e) {  
	            // TODO Auto-generated catch block  
	            e.printStackTrace();  
	        }  
	    }  
	    //�ж���������  
	    public boolean next(){  
	        boolean b = false;  
	        try {  
	            if(rs.next()){  
	                b = true;  
	            }  
	        } catch (SQLException e) {  
	            // TODO Auto-generated catch block  
	            e.printStackTrace();  
	        }  
	        return b;  
	    }  
	    //��ȡ���ֶ�ֵ  
	    public String getValue(String field) {  
	        String value = null;  
	        try {  
	            if (rs != null) {  
	                value = rs.getString(field);  
	            }  
	        } catch (SQLException e) {  
	            // TODO Auto-generated catch block  
	            e.printStackTrace();  
	        }  
	        return value;  
	    }  
	    //�ر�����  
	    public void closeConn() {  
	        try {  
	            if (conn != null) {  
	                conn.close();  
	            }  
	        } catch (SQLException e) {  
	            // TODO Auto-generated catch block  
	            e.printStackTrace();  
	        }  
	    }  
	    //�ر�statement  
	    public void closeStm() {  
	        try {  
	            if (stm != null) {  
	                stm.close();  
	            }  
	        } catch (SQLException e) {  
	            // TODO Auto-generated catch block  
	            e.printStackTrace();  
	        }  
	    }  
	    //�ر�ResultSet  
	    public void closeRs() {  
	        try {  
	            if (rs != null) {  
	                rs.close();  
	            }  
	        } catch (SQLException e) {  
	            // TODO Auto-generated catch block  
	            e.printStackTrace();  
	        }  
	    }  
	    public String getDriver() {  
	        return driver;  
	    }  
	    public void setDriver(String driver) {  
	        this.driver = driver;  
	    }  
	    public String getUrl() {  
	        return url;  
	    }  
	    public void setUrl(String url) {  
	        this.url = url;  
	    }  
	    public String getUsername() {  
	        return username;  
	    }  
	    public void setUsername(String username) {  
	        this.username = username;  
	    }  
	    public String getPassword() {  
	        return password;  
	    }  
	    public void setPassword(String password) {  
	        this.password = password;  
	    }  
	    public Statement getStm() {  
	        return stm;  
	    }  
	    public void setStm(Statement stm) {  
	        this.stm = stm;  
	    }  
	    public ResultSet getRs() {  
	        return rs;  
	    }  
	    public void setRs(ResultSet rs) {  
	        this.rs = rs;  
	    }  
	    public void setConn(Connection conn) {  
	        this.conn = conn;  
	    }  
	    public Connection getConn() {  
	        return conn;  
	    }  
	}  

