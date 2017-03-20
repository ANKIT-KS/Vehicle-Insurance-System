package dataaccess;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dbconnection.DBConnection;
import domain.Customer;

public class PaymentDAO {
	
	public boolean pay(String b,String policy,float amount,String mop,String contact,String type)
	{   int a=0;
	    String dat=null;  
	    Connection con = DBConnection.getConnection();
        PreparedStatement s = null;
        Customer user = null;
        try {
			String sql = "SELECT Policy_date from vehicle_registration where Policy_id = ?";
			s = con.prepareStatement(sql);
			s.setString(1,policy);
        } catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        try {
            ResultSet rSet = s.executeQuery();
            if (rSet.next()) {
           dat= rSet.getString("Policy_date");
            }
	if(con!=null)
		{
			
		
			String sql="INSERT INTO payment (	Payment_id, Policy_id, Payment_type,  Mode_of_payment, Contact_number, Due_date, Amount) VALUES(?,?,?,?,?,?,?)";
			
			PreparedStatement stmt;
			try {
				stmt = con.prepareStatement(sql);
		
			
		
			stmt.setString(1,b);
			stmt.setString(2, policy);
			stmt.setString(3,type);
			stmt.setString(4, mop);
			stmt.setString(5, contact);
			stmt.setString(6,dat );
			stmt.setFloat(7, amount);
		
			
			 a= stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
        } catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	}
	
	if(a!=0)
			{
				
				String[] tokens = dat.split("-");
		        int x=Integer.parseInt(tokens[0])+1;
		        String v=""+x;
		        System.out.println(v);
		        String mdate=v.concat(("-"+tokens[1]).concat(("-"+tokens[2])));
				String sql=	"UPDATE vehicle_registration SET Policy_date= ? WHERE Policy_id = ?";
				PreparedStatement stmt = null;
				
					try {stmt = con.prepareStatement(sql);
						stmt.setString(1,mdate);
						stmt.setString(2, policy);
					
						 a= stmt.executeUpdate();
						 System.out.println(a);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				
				return true;
		
			}	
			else
				return false;
			
		
	
	}
}
        
	          