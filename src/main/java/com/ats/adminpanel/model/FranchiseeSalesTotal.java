package com.ats.adminpanel.model;

public class FranchiseeSalesTotal {

	private int frId;
	private String frName;
	private float grandTotal;
	public int getFrId() {
		return frId;
	}
	public void setFrId(int frId) {
		this.frId = frId;
	}
	public String getFrName() {
		return frName;
	}
	public void setFrName(String frName) {
		this.frName = frName;
	}
	public float getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(float grandTotal) {
		this.grandTotal = grandTotal;
	}
	@Override
	public String toString() {
		return "FranchiseeSalesTotal [frId=" + frId + ", frName=" + frName + ", grandTotal=" + grandTotal + "]";
	}
	
	
	
}
