package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect 
{
	public static Connection JobConnect()throws SQLException
	{
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		
		String url="jdbc:mysql://localhost:3306/jobportal";
		String user="root";
		String password="";
		
		Connection con=DriverManager.getConnection(url, user, password);
		
		return con;
	}
}
