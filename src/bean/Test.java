package bean;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Test 
{
	public static void main(String[] args)
	{
		 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/y");  
		   LocalDateTime now = LocalDateTime.now();  
		   System.out.println(dtf.format(now));
	}
}
