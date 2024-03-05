package servlet;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import bean.UserMethod;

@WebServlet (urlPatterns = "/user-update")
public class EditSeeker extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		String un=req.getParameter("uname");
		String upass=req.getParameter("upass");
		String add=req.getParameter("address");
		String con=req.getParameter("contact");
		String gen=req.getParameter("gender");
		String dob=req.getParameter("dob");
		String lan=req.getParameter("language");			
		String quali=req.getParameter("qualification");		
		String skill=req.getParameter("skill");
		
		UserMethod um=new UserMethod();
		RequestDispatcher rd=req.getRequestDispatcher("seeker_profile.jsp");
		
		um.setEmail(email);
		um.setName(un);
		um.setPassword(upass);
		um.setAddress(add);
		um.setContact(con);
		um.setGender(gen);
		um.setDob(dob);
		um.setLanguage(lan);
		um.setQualification(quali);
		um.setSkills(skill);
		
		try {
			int res=um.updateUser();
			if(res==1)
			{
				req.setAttribute("msg", "Succesfully Updated");
			}
			else
			{
				req.setAttribute("msg", "Updated Failed");
			}
			rd.forward(req, resp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
