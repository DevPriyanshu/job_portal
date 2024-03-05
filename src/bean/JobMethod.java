package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.Connect;


public class JobMethod 
{
	String job_cat,job_type,job_name,company_email,job_post_date,job_last_date,qualification,salary,location,skills;
	int jobpostid,status; 
	
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getJob_cat() {
		return job_cat;
	}

	public void setJob_cat(String job_cat) {
		this.job_cat = job_cat;
	}
		
	public int getJobpostid() {
		return jobpostid;
	}

	public void setJobpostid(int jobpostid) {
		this.jobpostid = jobpostid;
	}

	public String getJob_type() {
		return job_type;
	}

	public void setJob_type(String job_type) {
		this.job_type = job_type;
	}

	public String getJob_name() {
		return job_name;
	}

	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}

	public String getCompany_email() {
		return company_email;
	}

	public void setCompany_email(String company_email) {
		this.company_email = company_email;
	}

	public String getJob_post_date() {
		return job_post_date;
	}

	public void setJob_post_date(String job_post_date) {
		this.job_post_date = job_post_date;
	}

	public String getJob_last_date() {
		return job_last_date;
	}

	public void setJob_last_date(String job_last_date) {
		this.job_last_date = job_last_date;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}
	public int postJob()throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="insert into job_posted (email,job_type,job_cat,job_post_name,job_post_date,job_last_date,qualification,package,location,skills) values(?,?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		
		ps.setString(1, company_email);
		ps.setString(2,  job_type);
		ps.setString(3,  job_cat);
		ps.setString(4, job_name);
		ps.setString(5, job_post_date);
		ps.setString(6, job_last_date);
		ps.setString(7, qualification);
		ps.setString(8, salary);
		ps.setString(9, location);
		ps.setString(10, skills);
		
		int res=ps.executeUpdate();
		
		return res;
	}
	
	public int updatePostedJob()throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="update job_posted set email=?, job_type=?, job_cat=?, job_post_name=?,job_post_date=?, job_last_date=?, qualification=?, package=?, location=?, skills=? where job_post_Id=?";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		
		ps.setString(1, company_email);
		ps.setString(2,  job_type);
		ps.setString(3,  job_cat);
		ps.setString(4, job_name);
		ps.setString(5, job_post_date);
		ps.setString(6, job_last_date);
		ps.setString(7, qualification);
		ps.setString(8, salary);
		ps.setString(9, location);
		ps.setString(10, skills);
		ps.setInt(11, jobpostid);
		
		int res=ps.executeUpdate();
		
		return res;
	}
	
	public int deletePostedJob()throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="delete from job_posted where job_post_id = ?";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		
		ps.setInt(1, jobpostid);
				
		int res=ps.executeUpdate();
		
		return res;
	}
	public ArrayList<JobMethod> showAllJob() throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="Select *from job_posted";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		ResultSet rs=ps.executeQuery();
		ArrayList<JobMethod> allJob=new ArrayList<>();
		
		while(rs.next())
		{
			int jpostid = Integer.parseInt(rs.getString("job_post_Id"));
			String cm = rs.getString("email");
			String jt = rs.getString("job_type");
			String jc = rs.getString("job_cat");
			String jn = rs.getString("job_post_name");				
			String postd = rs.getString("job_post_date");
			String lastd = rs.getString("job_last_date");
			String qua = rs.getString("qualification");
			String sal = rs.getString("package");
			String loc = rs.getString("location");
			String skill = rs.getString("skills");
			int status = rs.getInt("status");
			
			JobMethod jm=new JobMethod();
			jm.setJobpostid(jpostid);
			jm.setJob_type(jt);
			jm.setJob_cat(jc);
			jm.setJob_name(jn);
			jm.setCompany_email(cm);
			jm.setJob_post_date(postd);
			jm.setJob_last_date(lastd);
			jm.setQualification(qua);
			jm.setSalary(sal);
			jm.setLocation(loc);
			jm.setSkills(skill);
			jm.setStatus(status);
			
			allJob.add(jm);
		}
		return allJob;
	}
	
	public JobMethod getPostedJoById()throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="Select *from job_posted where job_post_id = ?";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		ps.setInt(1, jobpostid);
		
		ResultSet rs=ps.executeQuery();
		
		JobMethod jm=new JobMethod();
		
		while(rs.next())
		{
			int jpostid = Integer.parseInt(rs.getString("job_post_Id"));
			String cm = rs.getString("email");
			String jt = rs.getString("job_type");
			String jc = rs.getString("job_cat");
			String jn = rs.getString("job_post_name");				
			String postd = rs.getString("job_post_date");
			String lastd = rs.getString("job_last_date");
			String qua = rs.getString("qualification");
			String sal = rs.getString("package");
			String loc = rs.getString("location");
			String skill = rs.getString("skills");
			
			jm.setJobpostid(jpostid);
			jm.setJob_type(jt);
			jm.setJob_cat(jc);
			jm.setJob_name(jn);
			jm.setCompany_email(cm);
			jm.setJob_post_date(postd);
			jm.setJob_last_date(lastd);
			jm.setQualification(qua);
			jm.setSalary(sal);
			jm.setLocation(loc);
			jm.setSkills(skill);
			
			
		}
		return jm;
	}
	
	public JobMethod jobByType() throws SQLException
	{
		Connection con=Connect.JobConnect();
		
		String Sql="select *from job_posted where job_type=?";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		ps.setString(1, job_type);
		
		ResultSet rs=ps.executeQuery();
		
		JobMethod jm=new JobMethod();
		
		if(rs.next())
		{
			String jt=rs.getString("job_type");
			String jn=rs.getString("job_name");
			String jc = rs.getString("job_cat");
			String cm=rs.getString("company_email");
			String postd=rs.getString("job_post_date");
			String lastd=rs.getString("job_last_date");
			String qua=rs.getString("qualification");
			String sal=rs.getString("salary");
			String loc=rs.getString("location");
			String skill=rs.getString("skills");
			
			
			jm.setJob_type(jt);
			jm.setJob_name(jn);
			jm.setJob_cat(jc);
			jm.setCompany_email(cm);
			jm.setJob_post_date(postd);
			jm.setJob_last_date(lastd);
			jm.setQualification(qua);
			jm.setSalary(sal);
			jm.setLocation(loc);
			jm.setSkills(skill);
		}
		return jm;	
	}
	public ArrayList<JobMethod> showAllSearchJob() throws SQLException
	{
		Connection con=Connect.JobConnect();
		//String job_type1="%"+job_type+"%";
		String location1="%"+location+"%";
		String skill1="%"+skills+"%";
		String Sql="Select *from job_posted where job_type =? and (location like '"+location1+"' or skills like '"+skill1+"')";
		
		PreparedStatement ps=con.prepareStatement(Sql);
		ps.setString(1, job_type);
		
		ResultSet rs=ps.executeQuery();
		ArrayList<JobMethod> allJob=new ArrayList<>();
		
		while(rs.next())
		{
			String jt=rs.getString("job_type");
			String jc=rs.getString("job_cat");
			String jn=rs.getString("job_post_name");
			String cm=rs.getString("email");
			String postd=rs.getString("job_post_date");
			String lastd=rs.getString("job_last_date");
			String qua=rs.getString("qualification");
			String sal=rs.getString("package");
			String loc=rs.getString("location");
			String skill=rs.getString("skills");
			
			JobMethod jm=new JobMethod();
			
			jm.setJob_type(jt);
			jm.setJob_cat(jc);
			jm.setJob_name(jn);
			jm.setCompany_email(cm);
			jm.setJob_post_date(postd);
			jm.setJob_last_date(lastd);
			jm.setQualification(qua);
			jm.setSalary(sal);
			jm.setLocation(loc);
			jm.setSkills(skill);
			
			allJob.add(jm);
		}
		return allJob;
	}
}
