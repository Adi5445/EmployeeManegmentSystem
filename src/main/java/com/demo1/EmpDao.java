package com.demo1;





import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.Employee;

public class EmpDao {
	    
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testEMp","root","root");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	} 
	          public static int save(Employee e) {
	        	  
	        	    int status =0;
	        	       
	        	             Connection con =EmpDao.getConnection();
	        	             
	        	             try {
								PreparedStatement ps= con.prepareStatement("insert into emp4(name,password,email,sex,country) values(?,?,?,?,?)");
							
	        	                ps.setString(1, e.getName());
	        	                ps.setString(2, e.getPassword());
	        	                ps.setString(3, e.getEmail());
	        	                ps.setString(4, e.getSex());
	        	             
	        	                ps.setString(5, e.getCountry());
	        	             
	        	               
	        	                status = ps.executeUpdate();
	        	             
	        	             
	        	             } catch (SQLException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							}
	        	             
	        	  
	        	  
	        	  return status;
	          }
	          
	          public static List<Employee> getAllRecords()
	          {
	        	  
	        	      List<Employee> list=new ArrayList<>();
	        	      
	        	          Connection con=getConnection();
	        	          try {
							PreparedStatement ps= con.prepareStatement("select * from emp4");
							  ResultSet rs= ps.executeQuery();
							  
							  
							  while(rs.next())
							  {
								    Employee e1= new Employee();
								     int id =  rs.getInt("id");
								     e1.setId(id);
								     e1.setName(rs.getString("name"));
								     e1.setPassword(rs.getString("password"));
								     e1.setEmail(rs.getString("email"));
								     e1.setSex(rs.getString("sex"));
								     e1.setCountry(rs.getString("country"));
								     list.add(e1);
							  }
							
							
							
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
	        	          
	        	          
	        	          
	        	  
	        	  
	        	           
	        	  
	        	  return list;
	          }

	          
	          
	          public static Employee getRecordById(int id) {
	        	  
	        	  
	        	         Employee e1 =null;
	        	         
	        	          Connection con=getConnection();
	        	          
	        	          try {
							PreparedStatement ps= con.prepareStatement("select * from emp4 where id=?");
						
	        	             ps.setInt(1, id);
	        	             ResultSet rs= ps.executeQuery();
	        	             
	        	             
	        	              while(rs.next())
	        	              {
	        	            	    e1= new Employee();
	        	            	      e1.setId(rs.getInt("id"));
	        	            	      e1.setName(rs.getString("name"));
	        	            	      e1.setEmail(rs.getString("email"));
	        	            	      e1.setPassword(rs.getString("password"));
	        	            	      e1.setSex(rs.getString("sex"));
	        	            	      e1.setCountry(rs.getString("country"));
	        	            	    
	        	              }
	        	             
	        	          
	        	          
	        	          
	        	          } catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
	        	          
	        	  
	        	  
	        	   return e1;
	          }
	          
	          public static int update(Employee e) {
	        	  
	        	               int status=0;
	        	               
	        	                 Connection con = getConnection();
	        	                 try {
									PreparedStatement ps= con.prepareStatement("update emp4 set name=?,password=?,email=?,sex=?,country=? where id=?");
							
									

				        	                ps.setString(1, e.getName());
				        	                ps.setString(2, e.getPassword());
				        	                ps.setString(3, e.getEmail());
				        	                ps.setString(4, e.getSex());
				        	                ps.setString(5, e.getCountry());
				        	                ps.setInt(6, e.getId());
				        	                
				        	                 status =ps.executeUpdate();
	        	                 
	        	                 
	        	                 } catch (SQLException e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								}
	        	                 
	        	  
	        	  
	        	  
	        	  
	        	  
	        	  return status;
	          }
	          
	          public static int delete(Employee e) {
	        		
	 	                  int status =0;
	 	                  
	 	                    Connection con= getConnection();
	 	                     try {
								PreparedStatement ps= con.prepareStatement("delete from emp4 where id=?");
							
	 	                              ps.setInt(1, e.getId());
	 	                              status= ps.executeUpdate();
	 	                     
	 	                     } catch (SQLException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							}
							return status;
	 	                     
	        		
	          }


}





