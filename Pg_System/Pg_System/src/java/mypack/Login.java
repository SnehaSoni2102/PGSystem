/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
import javax.servlet.http.HttpSession;
import javax.servlet.http.*;
import org.apache.struts2.interceptor.*;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Maverick
 */
public class Login extends ActionSupport implements ServletRequestAware{        
    HttpServletRequest request;                                            
    public void setServletRequest(HttpServletRequest request){
        this.request=request;
    }
    
    String username,password;

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
public String execute()
{
    if(username.trim().length()<=0)
    {
       this.addActionError("username is required");
       return "error";
    }
    if(password.trim().length()<=0)
    {
        this.addActionError("password is required");
        return "error";
    }
   try
   {
  conn c1 = new conn();
  ResultSet rs  = c1.s.executeQuery("select * from login where username='"+username+"' and password='"+password+"'");
  if(rs.next())
  {
      HttpSession hs = request.getSession(true);
      hs.setAttribute("user",username);
      hs.setAttribute("user_id",rs.getString("id"));

      String t=rs.getString("type");
      if(t.equals("admin"))
          return "admin";
      else if(t.equals("customer"))
          return "customer";
      else if(t.equals("owner"))
          return "owner";
      else
          return "error";
      
//      if(username.equals("admin")&& password.equals("1234"))
  //    return "success";
    //  else
      //    return "customer";
  }
  else
  {
      this.addActionMessage("Invalid user try again");
      return "error";
  }
          
     
   }catch(Exception e){ e.printStackTrace();}
    
   this.addActionError("something wrong");
    return "error";
    
}
    
}
