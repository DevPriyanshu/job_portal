package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.CompanyMethod;
import bean.UserMethod;
@WebServlet(urlPatterns = "/checking")
public class LoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String ut=req.getParameter("usertype");
		String m=req.getParameter("mail");
		String p=req.getParameter("password");
		
		if(ut.equals("admin"))
		{
			
		}
		else if(ut.equals("user"))
		{
			UserMethod um=new UserMethod();
			um.setEmail(m);
			um.setPassword(p);
			try {
				ResultSet rs=um.loginUser();
				if(rs.next())
				{
					HttpSession hs=req.getSession();
					hs.setAttribute("email", m);
					RequestDispatcher rd=req.getRequestDispatcher("seeker_home.jsp");
					rd.forward(req, resp);
				}
				
				else
				{
					RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
					req.setAttribute("err", "inva;id Email or Password");
					rd.forward(req, resp);
				}
			} catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(ut.equals("company"))
		{
			CompanyMethod cm=new CompanyMethod();
			cm.setEmail(m);
			cm.setPassword(p);
			try {
				ResultSet rs=cm.companyLogin();
				if(rs.next())
				{
					HttpSession hs=req.getSession();
					hs.setAttribute("email", m);
					RequestDispatcher rd=req.getRequestDispatcher("company_home.jsp");
					rd.forward(req, resp);
				}
				else
				{
					RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
					req.setAttribute("err", "Inavlid Email Or Password");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}
}
