/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

/**
 *
 * @author oops
 */
import com.opensymphony.xwork2.ActionSupport;
import java.io.*;
import java.sql.*;
import javax.servlet.ServletContext;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

public class Signup extends ActionSupport{
String username,password,gender,address,email,country;
File myfile;
String myfileFileName;
String type;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getMyfileFileName() {
        return myfileFileName;
    }

    public void setMyfileFileName(String myfileFileName) {
        this.myfileFileName = myfileFileName;
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

    public File getMyfile() {
        return myfile;
    }

    public void setMyfile(File myfile) {
        this.myfile = myfile;
    }
  public String execute()
  {
   upload(); 
      try {
  conn c1 = new conn();
  c1.s.executeUpdate("insert into login(username,password,gender,address,country,email,image,type) values('"+username+"','"+password+"','"+gender+  "','"+address+"','"+country+"','"+
         email+"','"+myfileFileName+"','"+type+"')");
      
      }catch(Exception e)
      {
          this.addActionError("Exception"+e);
          return("error");
      }
      
   this.addActionMessage("user Registered");
      return("success");
      
  }
  void upload()
  {
      myfileFileName = getId()+ "_" + myfileFileName;
      ServletContext s = ServletActionContext.getServletContext();//name of 
   String filePath = s.getRealPath("/")+"/../../web/images/";
   
   File u = new File(filePath);
            if (u.exists()==false) {
                u.mkdirs();
            }
       try{
             FileUtils.copyFile(myfile,new File(u, myfileFileName));
            }catch(Exception e){e.printStackTrace();
            }

      
      
  }
  int getId()
  {
      int m=0;
      try
      {
          conn cc = new conn();
          
          ResultSet rs = cc.s.executeQuery("select max(id) from login");
          if(rs.next())
          {
              m = rs.getInt(1);
              m=m+1;
          }
          rs.close();
          
      }catch(Exception e){ e.printStackTrace(); }
    return(m);  
      
  }
  
  
  
  
  
  
  
  
  
}
