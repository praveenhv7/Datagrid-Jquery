package com.datatable.dto;

import java.util.List;

public class JSONResponse {

	private Integer draw;
	private Integer recordsTotal;
	private Integer recordsFiltered;
	private List<DataValues> data;
	
	public Integer getRecordsFiltered() {
		return recordsFiltered;
	}
	public void setRecordsFiltered(Integer recordsFiltered) {
		this.recordsFiltered = recordsFiltered;
	}

	
	public Integer getDraw() {
		return draw;
	}
	public void setDraw(Integer draw) {
		this.draw = draw;
	}
	public Integer getRecordsTotal() {
		return recordsTotal;
	}
	public void setRecordsTotal(Integer recordsTotal) {
		this.recordsTotal = recordsTotal;
	}
	public List<DataValues> getData() {
		return data;
	}
	public void setData(List<DataValues> data) {
		this.data = data;
	}
	
	
	
	
	
}
