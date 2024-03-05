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
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import bean.CompanyMethod;
@WebServlet (urlPatterns = "/update-company")
public class EditCompany extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MultipartRequest mr=new MultipartRequest(req,"C:\\Users\\CPCEducation\\eclipse-workspace\\job_portal\\WebContent\\profile");
		RequestDispatcher rd=req.getRequestDispatcher("company_profile.jsp");
		
		String n=mr.getParameter("name");
		String a=mr.getParameter("address");
		String c=mr.getParameter("contact");
		String ab=mr.getParameter("aboutus");
		String ct=mr.getParameter("ctype");
		String yea=mr.getParameter("eyear");
		
		HttpSession hs=req.getSession(false);
		String email=(String)hs.getAttribute("email");
		
		File file=mr.getFile("image");
		String image_name="";
		//System.out.println(image_name);
		
		String image_path="";
		
		if(file==null)
		{
			 image_name="";
			 image_path="";
		}
		else
		{
			 image_name=file.getName();
			 image_path="profile/"+image_name;
		}
		
		CompanyMethod cmethod=new CompanyMethod();
		
		cmethod.setName(n);
		cmethod.setAddress(a);
		cmethod.setContact(c);
		cmethod.setAbout_us(ab);
		cmethod.setType(ct);
		cmethod.setEstablish_year(yea);
		cmethod.setImage(image_path);
		cmethod.setEmail(email);
		
		int res;
		try {
			res = cmethod.updateCompany();
			if(res==1)
			{
				req.setAttribute("msg", "Successfully Update");
			}
			else
			{
				req.setAttribute("msg", "Update Failed");
			}
			rd.forward(req, resp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
