package minerva.utility;

public interface SQLCommands {
	
	//---BOOKS QUERY---
	
	String ADD_BOOK = "insert into books(accNum, class, author, bookTitle, edition, volume,"
			+ "pages, publisher, year, genre, availability, isActive) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1)";
	
	String EDIT_BOOK = "update books set accNum = ?, class = ?, bookTitle = ?, edition = ?,"
			+ "volume = ?, pages = ?, publisher = ?, year = ?, genre = ?, availability = ?"
			+ "where accNum = ? and isActive";
	
	String BROWSE_BOOKS = "select * from books where isActive";
	
	String DELETE_BOOKS = "UPDATE books SET isActive = 0 where accNum=?";
	
	String SEARCH_BOOKS = "select * from books where accNum=? and isActive";
	
	
	//---NEWS QUERY---
	
	String ADD_NEWS = "insert into news(newsTitle, newsMessage, newsDate) values (?, ?, ?)";
	
	String EDIT_NEWS = "update news set newsTitle = ?, newsMessage = ?, newsDate = ? where newsId = ?";
	
	String DELETE_NEWS = "UPDATE news SET isActive = 0 where newsId=?";
			
	String LIST_NEWS = "select * from news where isActive";

}
