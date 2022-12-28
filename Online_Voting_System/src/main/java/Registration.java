

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;


public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		DbManager db = new DbManager();
		java.sql.Connection con = db.getConnection();
		
		String name =  request.getParameter("uName");
		String phone =  request.getParameter("pNumber");
		String mail =  request.getParameter("mail");
		String voterId =  request.getParameter("vCardNum");
		String address =  request.getParameter("address");
		String dob =  request.getParameter("dob");
		
		
		try {
			PreparedStatement st = con.prepareStatement("insert into voterTable(uName, pNumber, mail, voter_Id, address, dob) values('"+name+"' , '"+phone+"' , '"+mail+"' , '"+voterId+"' , '"+address+"' , '"+dob+"' )");
			st.executeUpdate();
			response.sendRedirect("index.jsp");
		}
		catch(Exception e){
			System.out.print("wrong");
			e.printStackTrace();
		}
	}
}
