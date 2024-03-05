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

@WebServlet (urlPatterns = "/update-job-post")
public class UpdatePostedJob extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession hs=req.getSession(false);
		String email=(String)hs.getAttribute("email");
		
		int jobpostid = Integer.parseInt(req.getParameter("jobpostid"));
		
		String typ=req.getParameter("job_type");
		String cat=req.getParameter("job_cat");
		String jn=req.getParameter("jobname");
		String postd=req.getParameter("postdate");
		
		String lastd=req.getParameter("lastdate");
		
		String quali=req.getParameter("qualification");
		String pkg=req.getParameter("package");
		String loc = req.getParameter("location");
		String skl=req.getParameter("skill");
		
		JobMethod jm=new JobMethod();
		jm.setJobpostid(jobpostid);
		jm.setCompany_email(email);
		jm.setJob_type(typ);
		jm.setJob_cat(cat);
		jm.setJob_name(jn);
		jm.setJob_last_date(lastd);
		jm.setJob_post_date(postd);
		jm.setQualification(quali);
		jm.setSalary(pkg);
		jm.setLocation(loc);
		jm.setSkills(skl);
		
		RequestDispatcher rd=req.getRequestDispatcher("show_all_job.jsp");
		
		try 
		{
			int res=jm.updatePostedJob();
			if(res==1)
			{
				req.setAttribute("msg", "Succesfully Post Updated");
			}
			else
			{
				req.setAttribute("msg", "Post Update Failed");
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
