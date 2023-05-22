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

/**
 *
 * @author Maverick
 */
public class Pg extends ActionSupport implements ServletRequestAware{       //interface used to initialize the http servlet 
    HttpServletRequest request;                                               //request object so that we can register the 
                                                                  //data in this object that can be transferred to other web pages
    public void setServletRequest(HttpServletRequest request){
        this.request=request;
    }
    
    public String execute()
    {
        return ("success");
    }
    public String del()
    {
        ArrayList l1=new ArrayList();
        try
        {
            conn c1=new conn();
            ResultSet rs=c1.s.executeQuery("select * from property");
            while(rs.next())
            {
                model.pg_detail u=new model.pg_detail();
                u.setCity(rs.getString("city"));
                u.setSector(rs.getString("sector"));
                u.setAddress(rs.getString("address"));
                u.setSizes(rs.getString("size"));
                u.setFloors(rs.getString("floors"));
                u.setRent(rs.getString("rent"));
                u.setType(rs.getString("type"));
                u.setSharing(rs.getString("sharing"));
                u.setSharing_people(rs.getString("sharing_people"));
                u.setTerms(rs.getString("terms"));
                u.setFacilities(rs.getString("facilities"));
                u.setPhone(rs.getString("phone"));
                u.setEmail(rs.getString("email"));
                l1.add(u);
            }
            request.setAttribute("mydata", l1);
        }
        catch(Exception e)
            {
                    e.printStackTrace();
            }
        return ("success");
    }
    public String del1()
    {
        try
        {
            conn c1=new conn();
            c1.s.executeUpdate("delete from property where address='"+request.getParameter("u")+"'");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        del();
        return("success");
    }
    public String edit()
    {
        try
        {
            conn c1=new conn();
            ResultSet rs=c1.s.executeQuery("select * from property where address='"+request.getParameter("u")+"'");
            if(rs.next())
            {
                city=rs.getString("city");
                id=rs.getInt("id");
                sector=rs.getString("sector");
                address=rs.getString("address");
                sizes=rs.getString("size");
                floors=rs.getString("floors");
                rent=rs.getString("rent");
                type=rs.getString("type");
                sharing=rs.getString("sharing");
                sharing_people=rs.getString("sharing_people");
                terms=rs.getString("terms");
                facilities=rs.getString("facilities");
                phone=rs.getString("phone");
                email=rs.getString("email");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
            this.addActionError("error="+e);
        }
        del();
        return("success");
    }
    public String edit1()
    {
        try
        {
            conn c1=new conn();
            c1.s.executeUpdate("update property set city='"+city+"',sector='"+sector+"',address='"+address+"',size='"+sizes+"',floors='"+floors+"',rent="+rent+",type='"
                    +type+"',sharing='"+sharing+"',sharing_people="+sharing_people+",terms='"+terms+"',facilities='"+facilities+"',phone='"+phone+"',email='"+email+"' where id="+id);
            this.addActionMessage("Record Modified");
        }
        catch(Exception e)
        {
            e.printStackTrace();
            
        }
        del();
        return("success");
    }
    
    String city,sector,address,sizes,floors, rent, type, sharing, sharing_people, terms,facilities,phone, email;
    int id;

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public String verify()
    {
    fill_data();    
      return("success");  
    }
    public String verify1()
    {
 try
        {
            conn c1=new conn();
    c1.s.executeUpdate("update property set status='verified' where id="+id);
            this.addActionMessage("Property Verified");
        }
        catch(Exception e)
        {
            e.printStackTrace();
            
        }
        del();
        return("success");

        
        
    }
    public String fill_data()
    {
       ArrayList l1=new ArrayList();
        try
        {
            conn c1=new conn();
            ResultSet rs=c1.s.executeQuery("select * from property where status='non-verified'");
            while(rs.next())
            {
                model.pg_detail u=new model.pg_detail();
                u.setCity(rs.getString("city"));
                u.setSector(rs.getString("sector"));
                u.setAddress(rs.getString("address"));
                u.setSizes(rs.getString("size"));
                u.setFloors(rs.getString("floors"));
                u.setRent(rs.getString("rent"));
                u.setType(rs.getString("type"));
                u.setSharing(rs.getString("sharing"));
                u.setSharing_people(rs.getString("sharing_people"));
                u.setTerms(rs.getString("terms"));
                u.setFacilities(rs.getString("facilities"));
                u.setPhone(rs.getString("phone"));
                u.setEmail(rs.getString("email"));
                l1.add(u);
            }
            request.setAttribute("mydata", l1);
        }
        catch(Exception e)
            {
                    e.printStackTrace();
            }
        return ("success");
    }
}