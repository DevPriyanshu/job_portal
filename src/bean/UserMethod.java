package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.Connect;

public class UserMethod 
{
	String email,password,name,address,qualification,skills,resume,contact,gender,language,dob,image;

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

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getResume() {
		return resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	public int registerUser()throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="insert  into job_seeker_registration (user_email,user_password,user_name,contact,address,qualification,gender) values (?,?,?,?,?,?,?)";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		
		ps.setString(1, email);
		ps.setString(2, password);
		ps.setString(3, name);
		ps.setString(4, contact);
		ps.setString(5, address);
		ps.setString(6, qualification);
		ps.setString(7, gender);
		
		int res=ps.executeUpdate();
		return res;
	} 
	public int checkUser()throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="select *from job_seeker_registration where user_email=?";
		
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
	public int updateUser() throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		int res=0;
		 
			String Sql="update job_seeker_registration set  user_name=? , address=? , qualification=? ,skills=?, contact=?, gender=? , language=?,dob=?,user_password=? where user_email=?";
			
			PreparedStatement ps=con.prepareStatement(Sql);
			
			ps.setString(1, name);
			ps.setString(2, address);
			ps.setString(3, qualification);
			ps.setString(4, skills);
			ps.setString(5, contact);
			ps.setString(6, gender);
			ps.setString(7, language);
			ps.setString(8, dob);
			ps.setString(9, password);
			ps.setString(10, email);
			
			res=ps.executeUpdate();
		
		return res;
	} 
	public ResultSet loginUser()throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="select *from job_seeker_registration where user_email=? and user_password=?";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		
		ps.setString(1, email);
		ps.setString(2, password);
		
		ResultSet res=ps.executeQuery();
		
		return res;
	}
	public ArrayList<UserMethod> showAllUser()throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="Select *from job_seeker_registration";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		ResultSet rs=ps.executeQuery();
		
		ArrayList<UserMethod> allUser=new ArrayList<>();
		
		while(rs.next()) {
			
			String mail=rs.getString("user_email");
			String Pass=rs.getString("user_password");
			String nme=rs.getString("user_name");
			String add=rs.getString("Address");
			String qua=rs.getString("Qualification");
			String sk=rs.getString("Skills");
			String res=rs.getString("Resume");
			String cont=rs.getString("Contact");
			String gen=rs.getString("Gender");
			String lan=rs.getString("Language");
			String date=rs.getString("Dob");
			String img=rs.getString("Image");
			
			UserMethod um=new UserMethod();
			
			um.setEmail(mail);
			um.setPassword(Pass);
			um.setName(nme);
			um.setAddress(add);
			um.setQualification(qua);
			um.setSkills(sk);
			um.setResume(res);
			um.setContact(cont);
			um.setGender(gen);
			um.setLanguage(lan);
			um.setDob(date);
			um.setImage(img);
			
			allUser.add(um);
		}
		return allUser;
	}
	public UserMethod showByMail ()throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="Select *from job_seeker_registration where user_email=?";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		ps.setString(1, email);
		
		ResultSet rs=ps.executeQuery();
		
		UserMethod um=new UserMethod();
		
		if(rs.next()) {
			
			String mail=rs.getString("user_email");
			String Pass=rs.getString("user_password");
			String nme=rs.getString("user_Name");
			String add=rs.getString("Address");
			String qua=rs.getString("Qualification");
			String sk=rs.getString("Skills");
			String res=rs.getString("Resume");
			String cont=rs.getString("Contact");
			String gen=rs.getString("Gender");
			String lan=rs.getString("Language");
			String date=rs.getString("Dob");
			String img=rs.getString("Image");
		
			
			um.setEmail(mail);
			um.setPassword(Pass);
			um.setName(nme);
			um.setAddress(add);
			um.setQualification(qua);
			um.setSkills(sk);
			um.setResume(res);
			um.setContact(cont);
			um.setGender(gen);
			um.setLanguage(lan);
			um.setDob(date);
			um.setImage(img);
			
		}
		return um;
	}

}
