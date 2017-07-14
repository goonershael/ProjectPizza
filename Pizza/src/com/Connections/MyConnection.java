package com.Connections;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {
	private static Connection conn;
	
	public static Connection setConnection(){
		int count =0;
		if(count ==0){
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","SYSTEM", "arsenal");
				
				count ++;
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (java.sql.SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return conn;
	}
		
		public static void closeConnection(){
				try {
					conn.close();
					System.out.println("connection Closed successfully");
				} catch (java.sql.SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
}
