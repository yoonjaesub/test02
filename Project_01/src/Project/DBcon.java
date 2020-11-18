package Project;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBcon {
	public static Connection getConnection() throws Exception{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost/xe","system","1234");
		return conn;
	}
}

