package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.StateCity;

@WebServlet(urlPatterns = "/getCities")
public class GetAllCitiesServlet extends HttpServlet 
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		PrintWriter out = resp.getWriter();
		
		int sid = Integer.parseInt(req.getParameter("stateid"));
		
		//out.println("wow "+sid);
		
		StateCity sc = new StateCity();
		sc.setSid(sid);
		
		try 
		{
			ResultSet rs = sc.getAllCities();
			
			while(rs.next())
			{
				String city = rs.getString("city");
				out.print(city+",");
			}
			
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
