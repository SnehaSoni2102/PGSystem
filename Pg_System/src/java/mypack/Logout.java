/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;


import javax.servlet.http.*;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;

public class Logout extends ActionSupport
                          implements ServletRequestAware{

	private HttpServletRequest request;

	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
	}


   public String execute()
   {
      HttpSession hs = request.getSession(true);

      hs.invalidate();
      return(SUCCESS);

   }




}