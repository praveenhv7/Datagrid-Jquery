package com.datatable.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.datatable.dto.DataValues;
import com.datatable.dto.JSONResponse;
import com.google.gson.Gson;

/**
 * Servlet implementation class DatatableValues
 */
@WebServlet("/DatatableValues")
public class DatatableValues extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DatatableValues() {
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
		System.out.println("length"+request.getParameter("length"));
		System.out.println("start"+request.getParameter("start"));
		Integer length=Integer.parseInt(request.getParameter("length"));
		
		DataValues value=new DataValues();
		List<DataValues> valueList=new ArrayList<DataValues>();
		Integer draw=Integer.parseInt(request.getParameter("draw"));
		System.out.println("draw value"+draw);
		for(int i=0;i<20;i++)
		{
			value.setExtn("1001");
			value.setName("Praveen");
			value.setOffice("Infosys");
			value.setPosition("SSE");
			value.setSalary("Less Salary");
			value.setStart_date("13-10-2015");
			valueList.add(value);
		}
		
		List<DataValues> finalList=new ArrayList<DataValues>();
		for(int i=0;i<length;i++)
		{
			finalList.add(valueList.get(i));
		}
		
		
		JSONResponse resp=new JSONResponse();
		resp.setRecordsTotal(20);
		resp.setDraw(draw);
		resp.setData(finalList);
		resp.setRecordsFiltered(20);
		Gson gson=new Gson();
		String json=gson.toJson(resp);
		System.out.println(json);
		PrintWriter writer= response.getWriter();
		response.setContentType("application/json");
		writer.print(json);
		
	}

}
