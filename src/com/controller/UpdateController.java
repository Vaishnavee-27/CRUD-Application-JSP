package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.CustomerDao;
import com.Model.Register;


/**
 * Servlet implementation class UpdateController
 */
@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int curr_uid = Integer.parseInt(request.getParameter("curr_uid"));
		int uid = Integer.parseInt(request.getParameter("uid"));
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String bday = request.getParameter("bday");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String mobno = request.getParameter("phone");
		PrintWriter pWriter = response.getWriter();
		Register r = new Register(uid, fname, lname, bday, gender, email, mobno);
		CustomerDao dao = new CustomerDao();
		int i = dao.update(r, curr_uid);
		HttpSession session = request.getSession(true);
		if (i>0) {
			session.setAttribute("status", "updated successfully");
			response.sendRedirect("Update.jsp");
		}
		else {
		session.setAttribute("data status", "not updated");
		response.sendRedirect("Update.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
