package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.Connect;

public class StateCity 
{
	private String state,city;
	private int sid, cid;
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	
	public ArrayList<StateCity> getAllStates() throws SQLException
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
		
		return allstates;
	}
	
	public ResultSet getAllCities() throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String sql = "select *from cities where state_id = ?";
		
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, sid);
		
		ResultSet rs = ps.executeQuery();
		
		/*
		 * ArrayList<StateCity> allcities = new ArrayList<StateCity>();
		 * 
		 * while(rs.next()) { int cid = rs.getInt("id"); String city =
		 * rs.getString("city");
		 * 
		 * StateCity s = new StateCity(); s.setCid(cid); s.setState(city);
		 * 
		 * allcities.add(s); }
		 */
		
		return rs;
	}
}
