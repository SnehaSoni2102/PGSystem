/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;
import java.sql.*;

import java.util.*;
import javax.servlet.http.*;
import org.apache.struts2.interceptor.*;
import com.opensymphony.xwork2.ActionSupport;

public class Users extends ActionSupport
                implements ServletRequestAware
{
    HttpServletRequest request;

public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
public String execute()
{
    
    return ("success");
}
public String del()
{
    ArrayList l1  = new ArrayList();
    try
    {
        conn c1 = new conn();
        ResultSet rs  = c1.s.executeQuery("select * from login");
        while(rs.next())
        {
            model.User_Detail u = new model.User_Detail();
        u.setUsername(rs.getString("username"));
        u.setPassword(rs.getString("password"));
        u.setGender(rs.getString("gender"));
        u.setCountry(rs.getString("country"));
        u.setEmail(rs.getString("email"));
        u.setAddress(rs.getString("address"));
                
            l1.add(u);
            
        }
        request.setAttribute("mydata", l1);
    }catch(Exception e)
    {
        e.printStackTrace();
        return("error");
    }

    return("success");
    
}
public String del1()
{
    try
    {
        conn c1 = new conn();
        c1.s.executeUpdate("delete from login where username='"+request.getParameter("u")+"'");
                
    }catch(Exception e) {  
         e.printStackTrace();
    }
    
    del();
    return("success");
    
    
}
public String edit()
{
    try
    {
        conn c1 = new conn();
       ResultSet rs= c1.s.executeQuery(" select * from login where username='"+request.getParameter("u")+"'");
       if(rs.next())
       {
         username =rs.getString("username");
         id = rs.getInt("id");
         password= rs.getString("password");
         gender = rs.getString("gender");
         address = rs.getString("address");
         email = rs.getString("email");
         country= rs.getString("country");
           
           
           
       }
    }catch(Exception e) {  
         e.printStackTrace();
         this.addActionError("Error="+e);
    }
    
    return("success");
    
    
}
public String edit1()
{
    try
    {
        conn c1 = new conn();
  c1.s.executeUpdate("update login set username='"+username+"',password='"+password+"',gender='"+gender+"',address='"+address+"',country='"+country+"',email='"+email+"' where id="+id);
  
  this.addActionMessage("Record Modified");              
    }catch(Exception e) {  
         e.printStackTrace();
    }
    
   
    return("success");
    
    
}






    String username,password,gender,address,email,country;
    int id;

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
}
