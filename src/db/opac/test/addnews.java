package db.opac.test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addnews.html")
public class addnews extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection;

	public void init(ServletConfig config) throws ServletException {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp-opac-db", "root", "");
			
		} catch (ClassNotFoundException cnfe) {
			
			System.out.println("DB NOT FOUND");
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
		
		String newsMessage = request.getParameter("newsMessage");
		
		try{
		      
		      String query = "INSERT INTO NEWS (newsMessage, newsDate) VALUES (?, ?)";
		      
		      PreparedStatement pst = connection.prepareStatement(query);
		      pst.setString(1, newsMessage);
		      java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		      pst.setDate(2, sqlDate);
		 
//		      pst.executeUpdate();
//		      pst.clearParameters();
		      
		      
		      pst.executeUpdate();
		           
		      
		    } catch (Exception e){
		    	System.out.println("Message: " + e);
		    }
		
		response.sendRedirect("adminaddnews.jsp");
		
		
	}

}
