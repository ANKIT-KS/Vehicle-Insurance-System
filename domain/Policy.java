package domain;

public class Policy {

	String policyid;
	float p_amount;
	String m_date;
	public String getPolicyid() {
		return policyid;
	}
	public void setPolicyid(String policyid) {
		this.policyid = policyid;
	}
	public float getP_amount() {
		return p_amount;
	}
	public void setP_amount(float p_amount) {
		this.p_amount = p_amount;
	}
	public String getM_date() {
		return m_date;
	}
	public void setM_date(String m_date) {
		this.m_date = m_date;
	}
	public Policy(String policyid, float p_amount, String m_date) {
		super();
		this.policyid = policyid;
		this.p_amount = p_amount;
		this.m_date = m_date;
	}
	public Policy() {
		super();
	}
	
	
}
