package servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import bean.CompanyMethod;
import bean.SendingMail;

@WebServlet(urlPatterns = "/register-company")
public class CompanyRegister extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
		RequestDispatcher rd=req.getRequestDispatcher("company-registration.jsp");
		
		String mail=req.getParameter("email");
		String pass=req.getParameter("password");
		String name=req.getParameter("cname");
		String address=req.getParameter("address");
		String contact=req.getParameter("contact");
		String ctype=req.getParameter("type");
		
				
		CompanyMethod cm=new CompanyMethod();
		
		cm.setEmail(mail);
		cm.setPassword(pass);
		cm.setName(name);
		cm.setAddress(address);
		cm.setContact(contact);
		cm.setType(ctype);
		
		//System.out.println(mail + pass + name + address + contact  + ctype);
		
		try 
		{
			int x=cm.checkCompany();
			if(x==1)
			{
				req.setAttribute("msg", "Email Id already exists, try some another");
			}
			else
			{
				int res=cm.registerCompany();
				if(res==1)
				{
					SendingMail sm=new SendingMail();
					sm.sendCompanyNotification(cm);
					
					req.setAttribute("msg", "Success");
				}
				else
				{
					req.setAttribute("msg", "Failed");
				}
			}
			rd.forward(req, resp);
		}
		catch (Exception e1) 
			{
			   e1.printStackTrace();
			}
	}

}
