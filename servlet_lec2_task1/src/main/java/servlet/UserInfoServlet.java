package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;


@WebServlet("/UserInfoServlet")
public class UserInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		 String fullName = request.getParameter("fullName");
	     String age =      request.getParameter("age");
	     
	     response.setContentType("text/html");
	     PrintWriter out = response.getWriter();
	     
	     out.println("<!DOCTYPE html>");
	     out.println("<html>");
	     out.println("<head>");
	     out.println("<title>User Info Result</title>");
	     out.println("<link rel='stylesheet' type='text/css' href='" + request.getContextPath() + "/styles.css'>");
	     out.println("</head>");
	     out.println("<body>");
	     out.println("<div class='result-container'>");
	     out.println("<h2>User Information</h2>");
	     out.println("<p><strong>Full Name:</strong> " + fullName + "</p>");
	     out.println("<p><strong>Age:</strong> " + age + "</p>");
	     out.println("<div class='back-button'>");
	     out.println("<a href='user_data.html'>Back to Form</a>");
	     out.println("</div>");
	     out.println("</div>");
	     out.println("</body>");
	     out.println("</html>");
	}

}
