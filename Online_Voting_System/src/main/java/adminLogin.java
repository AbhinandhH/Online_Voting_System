

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class adminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		response.setContentType("text/html");
		DbManager db = new DbManager();
		java.sql.Connection con = db.getConnection();
		
		String name =  request.getParameter("aName");
		String password =  request.getParameter("password");
		
		 try {
			 
			 PreparedStatement st = con.prepareStatement("select * from admins where aName = '"+name+"' and adminPassword = '"+password+"'");
			 
			 ResultSet res = ((java.sql.Statement)st).executeQuery("select * from admins where aName = '"+name+"' and adminPassword = '"+password+"'");
			 
			 if(res.next()) {
				 HttpSession session = request.getSession();
				 
				 session.setAttribute("aName", name);
				 
				 response.sendRedirect("adminWelcome.jsp");
			 }
			 else {
				 response.sendRedirect("invalid.jsp");
			 }
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
