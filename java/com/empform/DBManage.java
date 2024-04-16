package com.empform;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class DBManage {
	public Connection con;
	String dburl ="jdbc:mysql://localhost:3306/empform";
	String dbname="root";
	String dbpass="bala";
	
	public DBManage() throws ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		try {
			con = DriverManager.getConnection(dburl, dbname, dbpass);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public int register(int id, String fname, String lname, String email, String Contact, String yop, String gender, String lpa, String cloc, String ploc) throws SQLException {
		String q = "insert into employee values (?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst = con.prepareStatement(q);
		pst.setInt(1, id);		
		pst.setString(2, fname);
		pst.setString(3, lname);
		pst.setString(4, email);
		pst.setString(5, Contact);
		pst.setString(6, yop);
		pst.setString(7, gender);
		pst.setString(8, lpa);
		pst.setString(9, cloc);
		pst.setString(10, ploc);
		
		int r = pst.executeUpdate();
		
		return r;
		
	}
	
	
	public ArrayList<Employee> select(){
		ArrayList<Employee> emplist = new ArrayList<Employee>();
		
		String q = "select * from employee";
		
		try {
			PreparedStatement pst = this.con.prepareStatement(q);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				int i = rs.getInt(1);
				String s1 = rs.getString(2);
				String s2 = rs.getString(3);
				String s3 = rs.getString(4);
				String s4 = rs.getString(5);
				String s5 = rs.getString(6);
				String s6 = rs.getString(7);
				String s7 = rs.getString(8);
				String s8 = rs.getString(9);
				String s9 = rs.getString(10);
				
				Employee emp = new Employee(i,s1, s2, s3, s4, s5, s6, s7, s8, s9);
				
				emplist.add(emp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return emplist;
	}

	public Employee getEmpByID(int id) throws SQLException {
		Employee employee = null;
		String q = "select * from employee where ID = ?";
		PreparedStatement pst = con.prepareStatement(q);
		pst.setInt(1, id);
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
			employee = new Employee(rs.getInt("ID"), rs.getString("Fname"), rs.getString("Lname"), 
					rs.getString("Email"), rs.getString("Contact"), rs.getString("YOP"), rs.getString("Gender"), rs.getString("LPA"), rs.getString("CLocation"), rs.getString("PLocation"));
			
					
		}
		return employee;
	}
	
	public int Update(int id, String fname, String lname, String email, String Contact, String yop, String gender, String lpa, String cloc, String ploc) throws SQLException {
		String q = "update employee set Fname=?, Lname=?, Email=?, Contact=?, YOP=?, Gender=?, LPA=?, Clocation=?, PLocation=? where id=? ";
		PreparedStatement pst = con.prepareStatement(q);
		pst.setString(1, fname);
		pst.setString(2, lname);
		pst.setString(3, email);
		pst.setString(4, Contact);
		pst.setString(5, yop);
		pst.setString(6, gender);
		pst.setString(7, lpa);
		pst.setString(8, cloc);
		pst.setString(9, ploc);
		pst.setInt(10, id);
		
		int res = pst.executeUpdate();
		
		return res;
	}
	
	public int Delete(int id) throws SQLException {
		String q ="delete from employee where id = ?";
		PreparedStatement pst = con.prepareStatement(q);
		pst.setInt(1, id);
		int res = pst.executeUpdate();
		return res;
		
	}
	
	
}
