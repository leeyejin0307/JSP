package abc;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.http.HttpServletResponse;
import org.apache.catalina.connector.Response;

public class InsertDb {
	private HttpServletResponse response;

	public InsertDb(HttpServletResponse response) {
		this.response = response;
	}
	public void insert(String name,String phone,String address,String grade,String city) {
		String query = getQuery(name,phone,address,grade,city);
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			PrintWriter out = response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp", "root", "");
			stmt = conn.createStatement();
			out.print("<script>alert('"+stmt.executeUpdate(query)+"개의 행이 추가되었습니다.');</script>");
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				if(stmt!=null) {
					stmt.close();
				}
				if(conn!=null) {
					conn.close();
				}
			}catch(Exception e) {
				
			}
		}
	}
	private String getQuery(String name,String phone,String address,String grade,String city) {
		String value = "";
		String query = "INSERT INTO member_table (";
		if(name!="") {
			query+="custname";
			value+="'"+name+"'";
		}
		if(phone!="") {
			query+=",phone";
			value+=",'"+phone+"'";
		}
		if(address!="") {
			query+=",address";
			value+=",'"+address+"'";
		}
		if(grade!="") {
			query+=",grade";
			value+=",'"+grade+"'";
		}
		if(city!="") {
			query+=",city";
			value+=",'"+city+"'";
		}
		String query_result = query+") VALUES ("+value+")";
		return query_result;
	}
}
