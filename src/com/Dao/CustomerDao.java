package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.Scanner;

import org.apache.jasper.tagplugins.jstl.core.Redirect;

import com.Model.Register;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

public class CustomerDao {
	Connection con = null;
	MyConnection m = new MyConnection();
	PreparedStatement ps,ps1;
	Scanner sc = new Scanner(System.in);

	public int register(Register r){
		con=m.getConnection();
		int i = 0;
		try {
			ps = con.prepareStatement("insert into jsp_customer values(?,?,?,?,?,?,?)");
			ps.setInt(1, r.getUid());
			ps.setString(2, r.getFname());
			ps.setString(3, r.getLname());
			ps.setString(4, r.getBday());
			ps.setString(5, r.getGender());
			ps.setString(6, r.getEmail());
			ps.setString(7, r.getMobno());
			i = ps.executeUpdate();
			if (i>0) {
				System.out.println("added successfully!");
				return i;
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}
	
	public int update(Register r,int curr_uid){
		con=m.getConnection();
		int i = 0;
		try {
			ps = con.prepareStatement("update jsp_customer set cust_uid = ?,first_name = ?,last_name = ?,birth_date = ?,gender = ?,mail = ?,mobile = ? where cust_uid = ?");
			ps.setInt(1, r.getUid());
			ps.setString(2, r.getFname());
			ps.setString(3, r.getLname());
			ps.setString(4, r.getBday());
			ps.setString(5, r.getGender());
			ps.setString(6, r.getEmail());
			ps.setString(7, r.getMobno());
			ps.setInt(8, curr_uid);
			i = ps.executeUpdate();
			if (i>0) {
				System.out.println("updated successfully!");
				return i;
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}
	
	public int delete(int uid){
		con=m.getConnection();
		int i = 0;
		try {
			ps = con.prepareStatement("delete from jsp_customer where cust_uid = ?");
			ps.setInt(1, uid);
			i = ps.executeUpdate();
			if (i>0) {
				System.out.println("deleted successfully!");
				return i;
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}
	
	public int isUID(int uid) {
		con=m.getConnection();
		try {
			ps = con.prepareStatement("select * from jsp_customer where cust_uid = ?");
			ps.setInt(1, uid);
			ResultSet rSet = ps.executeQuery();
			if (rSet.next()) {
				return 1;
			} else {
				return 0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	public LinkedList<Register> display(){
		con=m.getConnection();
		LinkedList<Register> lst = new LinkedList<Register>();
		int i = 0;
		try {
			ps = con.prepareStatement("select * from jsp_customer");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				int uid = rs.getInt("cust_uid");
				String fname = rs.getString("first_name");
				String lname = rs.getString("last_name"); 
				String bday = rs.getString("birth_date");
				String gender = rs.getString("gender");
				String email = rs.getString("mail");
				String mobno = rs.getString("mobile");
				Register r = new Register(uid, fname, lname, bday, gender, email, mobno);
				lst.add(r);
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return lst;
	}
	
	public Register search(int uid) {
		con = m.getConnection();
		Register r = null;
		try {
			ps = con.prepareStatement("select * from jsp_customer where cust_uid=?");
			ps.setInt(1, uid);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				int uidd = rs.getInt("cust_uid");
				String fname = rs.getString("first_name");
				String lname = rs.getString("last_name"); 
				String bday = rs.getString("birth_date");
				String gender = rs.getString("gender");
				String email = rs.getString("mail");
				String mobno = rs.getString("mobile");
				r = new Register(uidd, fname, lname, bday, gender, email, mobno);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return r;
	}
}
