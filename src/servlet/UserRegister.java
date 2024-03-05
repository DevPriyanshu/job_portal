package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.UserMethod;

@WebServlet (urlPatterns = "/user_register")
public class UserRegister extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String e=req.getParameter("email");
		String p=req.getParameter("password");
		
		String n=req.getParameter("name");
		String c=req.getParameter("contact");
		String a=req.getParameter("address");
		String q=req.getParameter("qualification");
		String g=req.getParameter("gender");
		
		UserMethod um=new UserMethod();
		
		um.setEmail(e);
		um.setPassword(p);
		um.setName(n);
		um.setContact(c);
		um.setAddress(a);
		um.setQualification(q);
		um.setGender(g);
		
		RequestDispatcher rd=req.getRequestDispatcher("user_register.jsp");
		
		try {
			int res=um.registerUser();
			if(res==1)
			{
				req.setAttribute("msg", "Success");
			}
			else
			{
				req.setAttribute("msg", "Failed");
			}
			rd.forward(req, resp);
		}
		catch (SQLException e1)
		{
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}
}
