import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.CustomerBO;
import business.PaymentBO;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String policyid = request.getParameter("policy_id");
		float amount = Float.parseFloat(request.getParameter("amount"));
		String mop = request.getParameter("mop");
		String contact = request.getParameter("contact");
		
		if(policyid.isEmpty()||mop.isEmpty())//registered pay
		{	
			RequestDispatcher rd = request.getRequestDispatcher("pay_premium.jsp");
			out.println("<font color=red>Please fill all the fields</font>");
			rd.include(request, response);
			
			
		}
		else
		{	
			String s="Direct Pay";
			
			System.out.println("Successful1..");
			PaymentBO payBO=new PaymentBO();
			boolean x = false;
			try {	 System.out.println("Successful2");
			
			x=payBO.pay(policyid,amount,mop,contact,s);
				//return payment id and next payment date from payment BO
			//if payment date is greater than due date, calculate late payment charge
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(x){
			
			RequestDispatcher rd = request.getRequestDispatcher("registered_pay.jsp");
			out.println("<font color=red>Registered pay done successfully</font>");
			//display payment id and next payment date
			rd.forward(request, response);
			}
		
	/*	else
		{
			PaymentBO payBO=new PaymentBO();
			boolean x = false;
			try {	 System.out.println("Successful3");
			//return payment id and next payment date from payment BO
			//if payment date is greater than due date, user cant do direct payment
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(x){
			
			RequestDispatcher rd = request.getRequestDispatcher("direct_pay.jsp");
			out.println("<font color=red>Direct pay done successfully</font>");
			
			rd.forward(request, response);
			}*/
		}
	}

}
