package com.b2tech;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstServlet extends HttpServlet{
	
	public  FirstServlet() {
		super();
		System.out.println("W srodku konstruktora-BEZ-ARG");
	}
	
	

	
	/**
	 * 
	 	doGet
		doPost
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Imie =req.getParameter("fname");
		String Nazwisko= req.getParameter("lname");
		String imieNazwisko=Imie+" "+Nazwisko;
		System.out.println(imieNazwisko);
	}
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Imie =req.getParameter("fname");
		String Nazwisko= req.getParameter("lname");
		String imieNazwisko=Imie+" "+Nazwisko;
		req.setAttribute("name", imieNazwisko);
		System.out.println(imieNazwisko);
		//PrintWriter wr=resp.getWriter();
		//resp.sendRedirect("test.html");
		RequestDispatcher dispatcher= req.getRequestDispatcher("/output.jsp");
		dispatcher.forward(req, resp);
		//wr.println("<html><body><h1>Nazywam sie:"+imieNazwisko+"</h1></body></html>");
		
		}
	@Override
	public void init() throws ServletException {
	super.init();
	System.out.println("W srodku init()");
	System.out.println("W srodku init()...........");
	

	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		super.service(req, resp);
		System.out.println("W srodku service()");
	}
	@Override
	public void destroy() {
		
		super.destroy();
		System.out.println("W srodku destroy()");
	}
	
}
