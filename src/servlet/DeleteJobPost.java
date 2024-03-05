package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.JobMethod;

@WebServlet(urlPatterns = "/deletejobpost")
public class DeleteJobPost extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int jobpostid = Integer.parseInt(req.getParameter("jobpostid"));
		
		JobMethod jm = new JobMethod();
		jm.setJobpostid(jobpostid);
		
		try 
		{
			int res = jm.deletePostedJob();
			
			RequestDispatcher rd = req.getRequestDispatcher("show_all_job.jsp");
			if(res == 1)
			{
				req.setAttribute("msg", "Deleted Successfully");
			}
			else
			{
				req.setAttribute("msg", "Failed");
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
