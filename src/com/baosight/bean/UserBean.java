package com.baosight.bean;

import com.baosight.util.GenerateUUID; 
public class UserBean {


		  public boolean valid(String username,String password){  
		        boolean isValid = false;  
		        DBAcess db = new DBAcess();  
		        if(db.createConn()){  
		            String sql = "select * from student where username='"+username+"' and password='"+password+"'";  
		            db.query(sql);  
		            if(db.next()){  
		                isValid = true;  
		            }  
		            db.closeRs();  
		            db.closeStm();  
		            db.closeConn();  
		        }  
		        return isValid;  
		    }  
		    //ע����֤  
		    public boolean isExist(String username){  
		        boolean isValid = false;  
		        DBAcess db = new DBAcess();  
		        if(db.createConn()){  
		            String sql = "select * from student where username='"+username+"'";  
		            db.query(sql);  
		            if(db.next()){  
		                isValid = true;  
		            }  
		            db.closeRs();  
		            db.closeStm();  
		            db.closeConn();  
		        }  
		        return isValid;  
		    }  
		    //ע���û�  
		    public boolean add(String username,String password,String email){  
		        boolean isValid = false;  
		        DBAcess db = new DBAcess();  
		        if(db.createConn()){  
		            String sql = "insert into student(id,username,password) values('"+GenerateUUID.next()+"','"+username+"','"+password+"')";  
		            isValid = db.update(sql);  
		            db.closeStm();  
		            db.closeConn();  
		        }  
		        return isValid;  
		    }  
		}  

