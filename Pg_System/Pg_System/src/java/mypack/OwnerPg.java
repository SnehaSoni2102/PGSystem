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
public class OwnerPg extends ActionSupport implements ServletRequestAware{       //interface used to initialize the http servlet 
    HttpServletRequest request;                                               //request object so that we can register the 
                                                                  //data in this object that can be transferred to other web pages
    public void setServletRequest(HttpServletRequest request){
        this.request=request;
    }
    
    public String execute()
    {
        return ("success");
    }
    public String status()
    {
        ArrayList l1=new ArrayList();
        try
        {
            conn c1=new conn();
   HttpSession hs=request.getSession(true);
String user_id=(String)hs.getAttribute("user_id");

            ResultSet rs=c1.s.executeQuery("select * from property where owner_id="+user_id);

            while(rs.next())
            {
                model.pg_detail u=new model.pg_detail();
                u.setId(rs.getInt("id"));
                u.setPstatus(rs.getString("pstatus"));
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
    public String book()
    {
        try
        {
            conn c1=new conn();
            c1.s.executeUpdate("update property set pstatus ='booked'  where id="+request.getParameter("u"));
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        status();
        return("success");
    }
   public String vacant()
    {
        try
        {
            conn c1=new conn();
            c1.s.executeUpdate("update property set pstatus ='vacant'  where id="+request.getParameter("u"));
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        status();
        return("success");
    }
}