package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SaveNoteServlet
 */
public class SaveNoteServlet extends HttpServlet implements Servlet {

	public SaveNoteServlet() {
		super();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			Note note =new Note(title,content,new Date());
			//hibernate:save
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx=session.beginTransaction();
			session.save(note);
			tx.commit();
			session.close();
			resp.setContentType("text/html");
			PrintWriter out = resp.getWriter();
			out.println("<h1 style='text-align:center;'>Data is added Successfully</h1>");
			out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>See ALL Notes here</a></h1>");
			

		} catch (Exception e) {
		}
	}

}
