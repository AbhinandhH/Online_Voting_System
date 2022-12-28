

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;


public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Contact() {
        super();

    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		DbManager db = new DbManager();
		
		java.sql.Connection con = db.getConnection();
		
		String uName =  request.getParameter("uName");
		String pNumber =  request.getParameter("pNumber");
		String email =  request.getParameter("mail");
		String command =  request.getParameter("comments");

		
		try {
			PreparedStatement st = con.prepareStatement("insert into contacts(uName, pNumber,email,cmnt)values('"+uName+"','"+pNumber+"','"+email+"','"+command+"')");
			st.executeUpdate();
			response.sendRedirect("index.jsp");
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
