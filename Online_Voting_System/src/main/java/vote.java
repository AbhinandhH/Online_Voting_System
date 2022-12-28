

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;


public class vote extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		DbManager db = new DbManager();
		java.sql.Connection con = db.getConnection();
		
		String vNumber =  request.getParameter("idNum");
		String party =  request.getParameter("party");
		
		try {
			
			PreparedStatement state1 = con.prepareStatement("insert into temp_vc_number(vNumber) values('"+vNumber+"')");
			
			PreparedStatement state2 = con.prepareStatement("insert into votecount(vNumber,party) values('"+vNumber+"','"+party+"')");
			
			state1.executeUpdate();
			
			state2.executeUpdate();
			
			response.sendRedirect("index.jsp");
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
	}

}
