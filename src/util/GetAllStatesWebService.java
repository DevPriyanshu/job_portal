package util;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import bean.StateCity;

@WebServlet(urlPatterns = "/getAllStates")
public class GetAllStatesWebService extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		PrintWriter out = resp.getWriter();
		try
		{
			Connection con=Connect.JobConnect();
			
			String sql = "select *from states";
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			ArrayList<StateCity> allstates = new ArrayList<StateCity>();
			
			while(rs.next())
			{
				int sid = rs.getInt("id");
				String state = rs.getString("name");
				
				StateCity s = new StateCity();
				s.setSid(sid);
				s.setState(state);
				
				allstates.add(s);
			}
			
			
			String json = new Gson().toJson(allstates);
			out.println("JSONObject :: "+json);
		}
		catch (Exception e) 
		{
			// TODO: handle exception
		}
	}
}
