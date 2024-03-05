package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.JobMethod;

@WebServlet (urlPatterns = "/job-post")
public class JobRegister extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession hs=req.getSession(false);
		String email=(String)hs.getAttribute("email");
		
		String typ=req.getParameter("job_type");
		String cat=req.getParameter("job_cat");
		String jn=req.getParameter("jobname");
		String lastd=req.getParameter("postdate");
		
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-mm-dd");  
		LocalDateTime now = LocalDateTime.now();  
		//System.out.println(dtf.format(now));
		
		String postd=""+dtf.format(now);
		
		String quali=req.getParameter("qualification");
		String pkg=req.getParameter("package");
		
		String state=req.getParameter("state");
		String city=req.getParameter("city");
		String loc = city+","+state;
		String skl=req.getParameter("skill");
		
		JobMethod jm=new JobMethod();
		
		jm.setCompany_email(email);
		jm.setJob_type(typ);
		jm.setJob_name(jn);
		jm.setJob_last_date(lastd);
		jm.setJob_post_date(postd);
		jm.setQualification(quali);
		jm.setSalary(pkg);
		jm.setLocation(loc);
		jm.setSkills(skl);
		
		RequestDispatcher rd=req.getRequestDispatcher("job-post.jsp");
		
		try 
		{
			int res=jm.postJob();
			if(res==1)
			{
				req.setAttribute("msg", "Succesfully Post");
			}
			else
			{
				req.setAttribute("msg", "posted Failed");
			}
			rd.forward(req, resp);
		} 
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
