package com.Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {

	public Connection getConnection(){
		Connection con=null;
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			//step2- connection to database
			String url="jdbc:oracle:thin:@localhost:1521:XE";
			String uname="System";
			String pass="123456789";
			//step2-connection to database
			con=DriverManager.getConnection(url,uname,pass);
			System.out.println("Connection to DB..");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
}
