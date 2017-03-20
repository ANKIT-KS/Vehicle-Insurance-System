package business;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import dataaccess.PaymentDAO;
public class PaymentBO{
	
	public boolean pay(String policy_id,float amount,String mop,String contact,String type)
	{
	
		Calendar cal = Calendar.getInstance();
		String a=new SimpleDateFormat("MMM").format(cal.getTime());
		String b=a.substring(0,3);
	    int randomPIN = (int)(Math.random()*9000)+1000;
	       
        String val = ""+randomPIN;
        b=b.concat(val);
		PaymentDAO pd=new PaymentDAO();
		boolean x = pd.pay(b,policy_id,amount,mop,contact,type);
		if(x)
			return true;
		else
			return false;
	}
}
