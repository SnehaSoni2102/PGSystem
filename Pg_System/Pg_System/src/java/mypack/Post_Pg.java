/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import com.opensymphony.xwork2.ActionSupport;
import java.io.*;
import java.sql.*;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

public class Post_Pg extends ActionSupport implements ServletRequestAware{       //interface used to initialize the http servlet 
    HttpServletRequest request;                                               //request object so that we can register the 
    String name,city,sector,address,sizes,floors,rent,type,sharing,sharing_people,terms,facilities,email,phone;
File myfile;
String myfileFileName;

                                                              //data in this object that can be transferred to other web pages
    
    public void setServletRequest(HttpServletRequest request){
        this.request=request;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getSector() {
        return sector;
    }

    public void setSector(String sector) {
        this.sector = sector;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSizes() {
        return sizes;
    }

    public void setSizes(String sizes) {
        this.sizes = sizes;
    }



    public String getFloors() {
        return floors;
    }

    public void setFloors(String floors) {
        this.floors = floors;
    }

    public String getRent() {
        return rent;
    }

    public void setRent(String rent) {
        this.rent = rent;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSharing() {
        return sharing;
    }

    public void setSharing(String sharing) {
        this.sharing = sharing;
    }

    public String getSharing_people() {
        return sharing_people;
    }

    public void setSharing_people(String sharing_people) {
        this.sharing_people = sharing_people;
    }

    public String getTerms() {
        return terms;
    }

    public void setTerms(String terms) {
        this.terms = terms;
    }

    public String getFacilities() {
        return facilities;
    }

    public void setFacilities(String facilities) {
        this.facilities = facilities;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public File getMyfile() {
        return myfile;
    }

    public void setMyfile(File myfile) {
        this.myfile = myfile;
    }

    public String getMyfileFileName() {
        return myfileFileName;
    }

    public void setMyfileFileName(String myfileFileName) {
        this.myfileFileName = myfileFileName;
    }

 void upload()
  {
      myfileFileName = "pg_"+getId()+ "_" + myfileFileName;
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
          
          ResultSet rs = cc.s.executeQuery("select max(id) from property");
          if(rs.next())
          {
              m = rs.getInt(1);
              m=m+1;
          }
          rs.close();
          
      }catch(Exception e){ e.printStackTrace(); }
    return(m);  
      
  }
  
    public String execute()
  {
   upload(); 
      try {
  conn c1 = new conn();
HttpSession hs=request.getSession(true);
String user_id=(String)hs.getAttribute("user_id");
  c1.s.executeUpdate("insert into property values(null,"+user_id+",'"+name+"','"+city+"','"+sector+"','"+address+  "','"+sizes+"','"+floors+"',"+rent+",'"+type+"','"+sharing+"',"+sharing_people+",'"+terms+"','"+facilities+"','"+phone+"','"+email+"','"
          
          +myfileFileName+"','non-verified','vacant')");
      
      }catch(Exception e)
      {
          this.addActionError("Exception"+e);
          return("error");
      }
      
   this.addActionMessage("Pg Registered");
      return("success");
      
  }


}
