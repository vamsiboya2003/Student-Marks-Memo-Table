package compalle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/calculate")
public class Myservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Myservelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int maths=Integer.parseInt(request.getParameter("tbmaths"));
		 int phy=Integer.parseInt(request.getParameter("tbphysics"));
		 int chem=Integer.parseInt(request.getParameter("tbchemestry"));
		 int bio=Integer.parseInt(request.getParameter("tbbiology"));
		 int avg=(maths+phy+chem+bio)/4;
		 StringBuilder result=new  StringBuilder();
		 if(avg>0&&avg<=35)
			result.append("Fail");
		 else if(avg>35 &&avg<=60)
			 result.append("Second class");
		 else if(avg>60&&avg<=75)
			 result.append("First class");
		 else if(avg>75&&avg<=100)
			 result.append("Distinction");
		 else
			 result.append("Not Consider");
		 request.setAttribute("final-result", result);
		 RequestDispatcher f=request.getRequestDispatcher("display.jsp");
		 f.forward(request, response);
			
			 
	}

}
