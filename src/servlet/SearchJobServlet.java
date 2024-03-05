package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.JobMethod;

@WebServlet(urlPatterns = "/search_job")
public class SearchJobServlet  extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String job_type = req.getParameter("job_type");
		String location = req.getParameter("location");
		String skills = req.getParameter("skills");
		
		JobMethod jm = new JobMethod();
		jm.setJob_type(job_type);
		jm.setLocation(location);
		jm.setSkills(skills);
		
		ArrayList<JobMethod> alljobs = new ArrayList<JobMethod>();
		
		if(job_type.equals("all")) 
		{
			
		}
		else
		{
			try 
			{
				alljobs = jm.showAllSearchJob();
			} 
			catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
