package db.opac.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

@WebServlet("/lendprocess.html")
public class lendProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

    private Connection connection;
    private static final String LEND_QUERY = "select * from books where bookTitle like ?";
	
	public void init(ServletConfig config) throws ServletException {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp-opac-db" , "root", "");
		}catch (ClassNotFoundException cnfe) {
			System.out.println("Where is your MySQL JDBC Driver?");
			cnfe.printStackTrace();
			return;
		}catch (SQLException sqle) {
			System.err.println("SQLE - " + sqle.getMessage());
			sqle.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bookInput = request.getParameter("inputBookTitle");
		
		try{
			PreparedStatement prepStmt = connection.prepareStatement(LEND_QUERY);
			prepStmt.setString(1, "%" + bookInput + "%");
			ResultSet rs = prepStmt.executeQuery();
			request.setAttribute("bookSearch", rs);
			RequestDispatcher dispatcher = request.getRequestDispatcher("lend.jsp");
			dispatcher.forward(request, response);
			
		}catch(Exception e) {
		    
		}finally {
			closeConnection(connection);
		}
	}

	private void closeConnection(Connection connection2) {
		
	}

}
