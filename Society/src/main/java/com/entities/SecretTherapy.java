package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class SecretTherapy {
	@Id
	private int slotNo;
	private String docName;
	public int getSlotNo() {
		return slotNo;
	}
	public void setSlotNo(int slotNo) {
		this.slotNo = slotNo;
	}
	public String getDocName() {
		return docName;
	}
	public void setDocName(String docName) {
		this.docName = docName;
	}

	public SecretTherapy(int slotNo, String docName) {
		super();
		this.slotNo = slotNo;
		this.docName = docName;
	}
	public SecretTherapy(int slotNo) {
		this.slotNo=slotNo;
		this.docName = null;
	}
	public boolean isBooked() {
		if(this.docName==null) {
			return false;
		}else {
			return true;
		}
	}
	public SecretTherapy() {
		super();
		// TODO Auto-generated constructor stub
	}

}
