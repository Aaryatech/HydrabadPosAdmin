package com.ats.adminpanel.model;

public class FranchiseeSalesDetails {

	private String id;
	private int frId;
	private String frName;
	private int itemId;
	private String itemName;
	private float mrp;
	private float qty;
	private float taxableAmt;
	private float totalTax;
	private float disc;
	private float grandTotal;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
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
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public float getMrp() {
		return mrp;
	}
	public void setMrp(float mrp) {
		this.mrp = mrp;
	}
	public float getQty() {
		return qty;
	}
	public void setQty(float qty) {
		this.qty = qty;
	}
	public float getTaxableAmt() {
		return taxableAmt;
	}
	public void setTaxableAmt(float taxableAmt) {
		this.taxableAmt = taxableAmt;
	}
	public float getTotalTax() {
		return totalTax;
	}
	public void setTotalTax(float totalTax) {
		this.totalTax = totalTax;
	}
	public float getDisc() {
		return disc;
	}
	public void setDisc(float disc) {
		this.disc = disc;
	}
	public float getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(float grandTotal) {
		this.grandTotal = grandTotal;
	}
	@Override
	public String toString() {
		return "FranchiseeSalesDetails [id=" + id + ", frId=" + frId + ", frName=" + frName + ", itemId=" + itemId
				+ ", itemName=" + itemName + ", mrp=" + mrp + ", qty=" + qty + ", taxableAmt=" + taxableAmt
				+ ", totalTax=" + totalTax + ", disc=" + disc + ", grandTotal=" + grandTotal + "]";
	}
	
	
}
