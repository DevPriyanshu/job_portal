package bean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import util.Connect;

public class CompanyMethod 
{
	private String email,password,name,address,contact,about_us,type,image,establish_year;

	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getAbout_us() {
		return about_us;
	}

	public void setAbout_us(String about_us) {
		this.about_us = about_us;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getEstablish_year() {
		return establish_year;
	}

	public void setEstablish_year(String establish_year) {
		this.establish_year = establish_year;
	}
	public int registerCompany() throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="insert  into company (Email,Password,Name,Address,Contact,Type) values (?,?,?,?,?,?)";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		
		ps.setString(1, email);
		ps.setString(2, password);
		ps.setString(3, name);
		ps.setString(4, address);
		ps.setString(5, contact);
		ps.setString(6, type);
		
		int res=ps.executeUpdate();
		return res;	
	} 
	public int updateCompany()throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		int res=0;
		
		if(image.equals("") || image==null)
		{
			String Sql="Update company set Name=?,Address=?,Contact=?,About_us=?,Type=?,Establish_Year=? where Email=?";
			
			PreparedStatement ps=con.prepareStatement(Sql);
			
			ps.setString(1, name);
			ps.setString(2, address);
			ps.setString(3, contact);
			ps.setString(4, about_us);
			ps.setString(5, type);
			ps.setString(6, establish_year);
			ps.setString(7, email);
			
			res=ps.executeUpdate();
		}
		else
		{
			String Sql="Update company set Name=?,Address=?,Contact=?,About_us=?,Type=?,Image=?,Establish_Year=? where Email=?";
			
			PreparedStatement ps=con.prepareStatement(Sql);
			
			ps.setString(1, name);
			ps.setString(2, address);
			ps.setString(3, contact);
			ps.setString(4, about_us);
			ps.setString(5, type);
			ps.setString(6, image);
			ps.setString(7, establish_year);
			ps.setString(8, email);
			
			res=ps.executeUpdate();
		}
		return res;
	}
	public int checkCompany()throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="select *from company where Email=?";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		
		ps.setString(1, email);
		
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			return 1;
		}
		else
		{
			return 0;
		}
	} 
	
	public String getCompanyProfile() throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="select image from company where Email=?";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		
		ps.setString(1, email);
		
		ResultSet rs=ps.executeQuery();
		
		String image = null;
		
		if(rs.next())
		{
			image = rs.getString("image");
		}
		else
		{
			image = null;
		}
		
		return image;
	} 
	
	public ResultSet companyLogin()throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="select *from company where Email=? and Password=?";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		
		ps.setString(1, email);
		ps.setString(2, password);
		
		ResultSet rs=ps.executeQuery();
		
		return rs;
	}
	public ArrayList<CompanyMethod> showAllCompany()throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="Select *from company";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		ResultSet rs=ps.executeQuery();
		ArrayList<CompanyMethod> allCompany=new ArrayList<>();
		
		while(rs.next())
		{
			String e=rs.getString("email");
			String p=rs.getString("password");
			String n=rs.getString("name");
			String a=rs.getString("address");
			String c=rs.getString("contact");
			String abo=rs.getString("about_us");
			String t=rs.getString("type");
			String img=rs.getString("image");
			String est=rs.getString("establish_year");
			
			CompanyMethod cm=new CompanyMethod();
			
			cm.setEmail(e);
			cm.setPassword(p);
			cm.setName(n);
			cm.setAddress(a);
			cm.setContact(c);
			cm.setAbout_us(abo);
			cm.setType(t);
			cm.setImage(img);
			cm.setEstablish_year(est);
			
			allCompany.add(cm);
		}
		return allCompany;	
	}
	public CompanyMethod comapnyDetailsByMail() throws SQLException
	{
		//System.out.println("Email :" +email);
		
		Connection con=Connect.JobConnect();
		
		String Sql="select *from company where Email=?";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		ps.setString(1, email);
		
		ResultSet rs=ps.executeQuery();
		
		CompanyMethod cm=new CompanyMethod();
		
		if(rs.next())
		{
			String e=rs.getString("Email");
			String p=rs.getString("Password");
			String n=rs.getString("Name");
			String a=rs.getString("Address");
			String c=rs.getString("Contact");
			String abo=rs.getString("About_us");
			String t=rs.getString("type");
			String img=rs.getString("image");
			String est=rs.getString("establish_year");
			
			//System.out.println(n);
			
			cm.setEmail(e);
			cm.setPassword(p);
			cm.setName(n);
			cm.setAddress(a);
			cm.setContact(c);
			cm.setAbout_us(abo);
			cm.setType(t);
			cm.setImage(img);
			cm.setEstablish_year(est);
		}
		
		return cm;	
	}
}
