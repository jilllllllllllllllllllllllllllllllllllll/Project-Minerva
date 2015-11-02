package db.opac.test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchprocess.html")
public class searchProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String SEARCH_QUERY = "SELECT * FROM BOOKS WHERE LIKE ?"; 
	private static final String AUTHOR_QUERY = "SELECT * FROM BOOKS WHERE author LIKE ?"; 
	private static final String TITLE_QUERY = "SELECT * FROM BOOKS WHERE bookTitle LIKE ?"; 
	private static final String GENRE_QUERY = "SELECT * FROM BOOKS WHERE genre LIKE ?"; 
	
	private Connection connection;
	
	public void init(ServletConfig config) throws ServletException {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp-opac-db", "root", "");
			
		} catch (ClassNotFoundException cnfe) {
			
			System.out.println("Where is your MySQL JDBC Driver?");
			cnfe.printStackTrace();
			return;
			
		} catch (SQLException sqle) {
			
			System.err.println("SQLE" + sqle.getMessage());
			sqle.printStackTrace();
			
		}
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String searchInput = request.getParameter("generalSearch");
		
		
		try {
			
			PreparedStatement pst = connection.prepareStatement(TITLE_QUERY);
			pst.setString(1, "%" + searchInput + "%");
			ResultSet rs = pst.executeQuery();
			request.setAttribute("search", rs);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("search.jsp");
			dispatcher.forward(request, response);
			
		} catch (SQLException sqle) {
			
			System.err.println(sqle.getMessage());
			
		}
		
		
		
	}

}
