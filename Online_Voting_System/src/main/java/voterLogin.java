

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class voterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public voterLogin() {
        super();
       
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		DbManager db = new DbManager();
		java.sql.Connection con = db.getConnection();
		
		String vNumber =request.getParameter("voterNumber");
		
		try {
			
			 PreparedStatement st = con.prepareStatement("select vNumber from temp_vc_number where vNumber = '"+vNumber+"'");
			 ResultSet res = ((java.sql.Statement)st).executeQuery("select * from temp_vc_number where vNumber = '"+vNumber+"'");
			 if(res.next()) {
				 response.sendRedirect("voterisalreadyvotedornot.jsp");
			 }else {
				 PreparedStatement state = con.prepareStatement("select * from voterTable where voter_Id = '"+vNumber+"'");
				 ResultSet result = ((java.sql.Statement)state).executeQuery("select * from voterTable where voter_Id = '"+vNumber+"'");
				 if(result.next()) {
					 response.sendRedirect("voterwelcome.jsp");
				 }else {
					 response.sendRedirect("invalid.jsp");
				 }
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
