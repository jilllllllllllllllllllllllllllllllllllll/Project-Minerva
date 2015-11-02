package db.opac.test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addbook.html")
public class addbook extends HttpServlet {
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
		
				
		try{
		      Long accNum = Long.parseLong(request.getParameter("accNumber"));
		      String Class = request.getParameter("class");
		      String author = request.getParameter("author");
		      String bookTitle = request.getParameter("bookTitle");
		      String edition = request.getParameter("edition");
		      int volume = Integer.parseInt(request.getParameter("volume"));
		      Long pages = Long.parseLong(request.getParameter("pages"));
		      String publisher = request.getParameter("publisher");
		      Long year = Long.parseLong(request.getParameter("year"));
		      String genre = request.getParameter("genre");
		      String availability = request.getParameter("availability");
		       
		      
		      String query = "insert into books (accNum, class, author, bookTitle, edition, volume, pages,"
		      		+ "publisher, year, genre, availability) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		      
		      PreparedStatement pst = connection.prepareStatement(query);
		      pst.setLong(1, accNum);
		      pst.setString(2, Class);
		      pst.setString(3, author);
		      pst.setString(4, bookTitle);
		      pst.setString(5, edition);
		      pst.setInt(6, volume);   
		      pst.setLong(7, pages);
		      pst.setString(8, publisher);
		      pst.setLong(9, year);      
		      pst.setString(10, genre);
		      pst.setString(11, availability);
		 
//		      pst.executeUpdate();
//		      pst.clearParameters();
		      
		      
		      pst.executeUpdate();
		           
		      
		    } catch (Exception e){
		    	System.out.println("Message: " + e);
		    }
		
		response.sendRedirect("adminaddbook.jsp");
		
		  }
		
	
}
