package dataaccess;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import dbconnection.DBConnection;
import domain.Customer;
import domain.Policy;

public class VehicleDAO {

	  public int insert(int Engine_number,int Vehicle_owner,String Vehicle_state, String Vehicle_manufacture,String Vehicle_model,int Vehicle_yearofmake,String Vehicle_regloc,int Vehicle_price,String DOP,String id,float p_amount,String mdate ) throws Exception {
			
		  int a=0;
		
		 try {
				Connection con=DBConnection.getConnection();
				if(con!=null)
				{
					
				
					String sql="INSERT INTO vehicle_registration (Engine_number, Vehicle_ownerid, Vehicle_state,  Vehicle_manufacture, Vehicle_model, Vehicle_yearofmake, Vehicle_registeringlocation, Vehicle_price,Vehicle_DOP,Policy_id,Policy_amount,Policy_date) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
					
					PreparedStatement stmt=con.prepareStatement(sql);
					
				
					stmt.setInt(1, Engine_number);
					stmt.setInt(2, Vehicle_owner);
					stmt.setString(3, Vehicle_state);
					stmt.setString(4, Vehicle_manufacture);
					stmt.setString(5, Vehicle_model);
					stmt.setInt(6, Vehicle_yearofmake);
					stmt.setString(7, Vehicle_regloc);
					stmt.setInt(8, Vehicle_price);
					stmt.setString(9, DOP);
					stmt.setString(10, id);
					stmt.setFloat(11, p_amount);
					stmt.setString(12, mdate);
					
					 a= stmt.executeUpdate();
					
					
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		
		return a;
			
		}
		
	  public ArrayList<Policy> find(int id)
	  {
		  Policy p=new Policy();
		  ArrayList<Policy> al=new ArrayList<Policy>();
		  int n=0;
		    Connection con = DBConnection.getConnection();
	        PreparedStatement s = null;
	        Customer user = null;
	        try {
				String sql = "SELECT Policy_id,Policy_amount,Policy_date from vehicle_registration where Vehicle_ownerid = ?";
				s = con.prepareStatement(sql);
				s.setInt(1,id);
	      
	            ResultSet rSet = s.executeQuery();
	            
	            if (rSet.next()) {
	            	System.out.println(rSet.getString("Policy_id"));
	            	System.out.println(Float.parseFloat(rSet.getString("Policy_amount")));
	            	System.out.println(rSet.getString("Policy_date"));
	                  p=new Policy(rSet.getString("Policy_id"),Float.parseFloat(rSet.getString("Policy_amount")),rSet.getString("Policy_date"));
	            al.add(p);
	               }
	        }catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
	      
	        return al;
	  }
	
	
	
}
