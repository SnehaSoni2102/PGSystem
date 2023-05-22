/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;

import java.util.*;
import javax.servlet.http.*;
import model.pg_detail;
import org.apache.struts2.interceptor.*;

public class Search_Pg extends ActionSupport
                implements ServletRequestAware
{
    String city,sector,rent,type;
    
    
    HttpServletRequest request;

public void setServletRequest(HttpServletRequest request) {
		this.request = request;
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

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }



public String execute()
{
    ArrayList l1 = new ArrayList();
    
    try
    {
    conn c = new conn();
    
    int n=rent.indexOf("-");
    String a=rent.substring(0,n);
    String b=rent.substring(n+1,rent.length());
    
    
    
    ResultSet rs = c.s.executeQuery("select * from property where city='"+city+"' and sector='"+sector+"' and type='"+type+"' and rent between "+a+" and "+b);
    while(rs.next())
    {
        
       
        
       pg_detail p = new pg_detail();
       p.setId(rs.getInt("id"));
       p.setPstatus(rs.getString("pstatus"));
       p.setSizes(rs.getString("size"));
    
       p.setCity(rs.getString("city"));
       p.setSector(rs.getString("sector"));
      p.setAddress(rs.getString("address"));
     p.setRent(rs.getString("rent"));
     p.setType(rs.getString("type"));
     p.setName(rs.getString("name"));
     p.setFloors(rs.getString("floors"));
     p.setSharing(rs.getString("sharing"));
     p.setSharing_people(rs.getString("sharing_people"));
     p.setTerms(rs.getString("terms"));
     p.setFacilities(rs.getString("facilities"));
     p.setPhone(rs.getString("phone"));
    p.setEmail(rs.getString("email"));
    p.setImage(rs.getString("image"));
    l1.add(p);
        
    }
      request.setAttribute("pgdata",l1);  
    }catch(Exception e)
    {
        e.printStackTrace();
        this.addActionError(""+e);
        return ("error");
    }
    
    return ("success");
}
}
