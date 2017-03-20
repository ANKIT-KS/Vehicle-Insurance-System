package business;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;

import dataaccess.CustomerDAO;
import dataaccess.VehicleDAO;
import domain.Customer;
import domain.Policy;

public class VehicleBO {
	public Policy register(String v_type,int engine_no,int Vehicle_ownerid,String Vehicle_state, String Vehicle_manufacture,String Vehicle_model,int Vehicle_yearofmake,String Vehicle_regloc,int Vehicle_price,String DOP, String clas) throws Exception {
    String s;
    float p_amount;
    Date d;
		if(v_type.equals("Two Wheeler"))
    	s="TW";
		else
		s="FW";
	   String s1=DOP.substring(2, 4);
	   System.out.println(s1);
		s=s.concat(s1);
		   int randomPIN = (int)(Math.random()*9000)+1000;
	        String val = ""+randomPIN;
	        s=s.concat(val);
	        if(clas.equals("private"))
	        {
	        	p_amount= (float)(Vehicle_price*0.065);
	        }
	        else
	        {
	        	p_amount=(float)(Vehicle_price*0.099);
	        }
	        String[] tokens = DOP.split("-");
	        int x=Integer.parseInt(tokens[0])+1;
	        String a=""+x;
	        System.out.println(a);
	        String mdate=a.concat(("-"+tokens[1]).concat(("-"+tokens[2])));
	        System.out.println(mdate);
	        System.out.println(p_amount);
	        Policy p=new Policy(s,p_amount,mdate);
		
    boolean y=false;
    int result=0;
	 result = new VehicleDAO().insert( engine_no, Vehicle_ownerid, Vehicle_state,  Vehicle_manufacture, Vehicle_model, Vehicle_yearofmake, Vehicle_regloc, Vehicle_price, DOP,s,p_amount,mdate);
	 
	System.out.println(result);
	
		return p;
	
		
		
	}
	public ArrayList<Policy> list(int id)
	{
		VehicleDAO vdao=new VehicleDAO();
		ArrayList<Policy> al=new ArrayList<Policy>();
		Policy p=new Policy();
		al=vdao.find(id);
		 Iterator itr=al.iterator();  
		  while(itr.hasNext()){ 
			  p=(Policy) itr.next();
			  System.out.println(p.getPolicyid());
		
	}return al;
	
}}
