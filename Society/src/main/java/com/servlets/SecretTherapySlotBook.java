package com.servlets;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;



import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.SecretTherapy;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SecretTherapySlotBook
 */
public class SecretTherapySlotBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SecretTherapySlotBook() {
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
		SecretTherapy therapy;
		Session s = FactoryProvider.getFactory().openSession();
		int slot = Integer.parseInt(request.getParameter("slot"));
		String docName = request.getParameter("docName");
		Transaction tx = s.beginTransaction();
	    therapy = s.get(SecretTherapy.class,slot);
	    therapy.setDocName(docName);
	    s.update(therapy);
		tx.commit();
		s.close();
		response.sendRedirect("therapy.jsp");
	}

}
