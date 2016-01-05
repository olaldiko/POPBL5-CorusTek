package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.postgresql.Driver;

/**
 * Servlet implementation class MapServlet
 */
@WebServlet("/Mapa")
public class MapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String PAGE_MAPS = "/pages/mapa.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MapServlet() {
    	super();
        try {
			Driver.register();
		} catch (Exception e) {}
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String next_page = PAGE_MAPS;
		String event = request.getParameter("action");
		
		if(event != null) {
			switch(event) {
			
			}
		}
		
		// Forward
		response.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(next_page);
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}