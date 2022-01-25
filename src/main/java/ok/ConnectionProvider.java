package ok;
import java.sql.*;
import javax.swing.JOptionPane;

public class ConnectionProvider {
	
	public static Connection getCon()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hitakshi","root","");
			return con;
			
		}
		catch(Exception e)
		{
			JOptionPane.showMessageDialog(null,"Error"+ e);
			return null;
			
		}
		
	}

}
