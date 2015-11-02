package db.opac.test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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

@WebServlet("/displaybooks.html")
public class displaybooks extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
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
		
if (connection != null) {
	
			try {
				
				Statement stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM BOOKS");
				
				System.out.println("Successful connection");
				
				
				request.setAttribute("books", rs);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("usermainpage.jsp");
				
				dispatcher.forward(request, response);
				
			} catch (SQLException sqle) {
				
				System.err.println(sqle.getMessage());
				
			}
			
		} else {
			
			System.out.println("Failed to make connection");
			
		}
		
	}

}
