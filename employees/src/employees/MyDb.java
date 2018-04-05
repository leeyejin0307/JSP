package employees;
import java.sql.*;
public class MyDb {
	private String dbURL = "jdbc:mysql://localhost:3306/employees";
	private String dbID = "root";
	private String dbPW = "";
	private Connection conn = null;
	private Statement stmt = null;
	
	public MyDb() {
	
	}
		
	public boolean connectDb() {
		try {
				//String query = getQuery(fname,lname,position,department,sal,op);
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection(dbURL,dbID,dbPW);
				stmt = conn.createStatement();
				return true;
		}catch(Exception e){
			return false;
		}
	}
	
	public String executeQuery(String fname,String lname,String position,String sal,String op) {
		StringBuilder query= new StringBuilder();
		StringBuilder html = new StringBuilder();
		query.append("SELECT employees.emp_no,employees.last_name,employees.first_name,salaries.salary,titles.title,employees.gender,salaries.from_date FROM employees,salaries,titles ");
		query.append("WHERE employees.emp_no = salaries.emp_no and employees.emp_no = titles.emp_no");
		query.append(getWhere(fname,lname,position,sal,op));
		System.out.println(query.toString());
		try {
			ResultSet rs = stmt.executeQuery(query.toString());
			while(rs.next()) {
				html.append("<tr>");
				html.append("<td>");
				html.append(rs.getString(1));
				html.append("</td>");
				html.append("<td>");
				html.append(rs.getString(2));
				html.append("</td>");
				html.append("<td>");
				html.append(rs.getString(3));
				html.append("</td>");
				html.append("<td>");
				html.append(rs.getString(4));
				html.append("</td>");
				html.append("<td>");
				html.append(rs.getString(5));
				html.append("</td>");
				html.append("<td>");
				html.append(rs.getString(6));
				html.append("</td>");
				html.append("<td>");
				html.append(rs.getString(7));
				html.append("</td>");
				html.append("</tr>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			return html.toString();
		}
	}
	private String getWhere(String fname,String lname,String position,String sal,String op) {
		StringBuilder str = new StringBuilder();
		if(lname!="") {
			str.append(" and employees.last_name='");
			str.append(lname);
			str.append("'");
		}
		if(fname!="") {
			str.append(" and employees.first_name='");
			str.append(fname);
			str.append("'");
		}
		if(position!="") {
			str.append(" and titles.title ='");
			str.append(position);
			str.append("'");
		}
		if(sal!="") {
			str.append(" and salaries.salary ");
			if(op!="") {
			str.append(op);
			}else {
				str.append("=");
			}
			str.append(sal);
		}
		System.out.println(str);
		return str.toString();
	}
}
