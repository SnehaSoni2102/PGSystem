
package mypack;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;
import java.io.*;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.ServletContext;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
public class Edit_Pg extends ActionSupport{
    String city,sector,address,sizes,floors,rent,type,sharing,sharing_people,terms,facilities,email,phone;
    File myfile;
    String myfileFileName;
    int id;

    public String getSharing_people() {
        return sharing_people;
    }

    public void setSharing_people(String sharing_people) {
        this.sharing_people = sharing_people;
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

    public void setSizes(String esize) {
        this.sizes = esize;
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
     public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    void upload()
    {
        myfileFileName="pg_"+getId()+"_"+myfileFileName;
         ServletContext s=ServletActionContext.getServletContext();
         String filePath=s.getRealPath("/")+"/images/";
         File uploadDir = new File(filePath);
         if(uploadDir.exists()==false)
         {
             uploadDir.mkdirs();//mkdirs make directory
         }
         
         try
         {
             FileUtils.copyFile(myfile,new File(uploadDir,myfileFileName));
         }
         catch(Exception e)
         {
             e.printStackTrace();
         }
    }
   
     public  String execute()
    {
        upload();
          try
          {  
                conn c1=new conn();
                c1.s.executeUpdate("update property set  city='"+city+"',sector='"+sector+"',address='"+address+"',size='"+sizes+"',floors='"+floors+"',rent="+rent+",type='"+type+"',"
                        + "sharing='"+sharing+"',sharing_people="+sharing_people+",terms='"+terms+"',facilities='"+facilities+"',"
                        + "phone='"+phone+"',email='"+email+"',image='"+myfileFileName+"' where id="+id+" ");
               
             }
          catch(Exception e)
           {
                this.addActionError("Exception "+e);
                return("error");
            } 
           this.addActionMessage("PG Updated");
        return ("success");
    }
}

