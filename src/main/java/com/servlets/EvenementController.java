package com.servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.beans.Evenement;
import com.beans.Institution;
import com.dao.EvenementDAO;
import com.dao.InstitutionDAO;

import daoImpl.EvenementDAOImpl;
import daoImpl.InstitutionDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet(name="ev", urlPatterns = {"/evenementController","*.ev"})
public class EvenementController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private EvenementDAO evenementDAO = new EvenementDAOImpl() ; 
	private InstitutionDAO institutionDAO = new InstitutionDAOImpl() ; 
       

    public EvenementController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath() ; 
		if(path.equals("/Center/events.ev")) {
			List<Evenement> events = evenementDAO.getAllEvenements() ; 
			request.setAttribute("events", events) ;
			request.getRequestDispatcher("ListEvenments.jsp").forward(request,response);
		
		}else if(path.equals("/Center/addEvent.ev")){
			request.getRequestDispatcher("addEvent.jsp").forward(request,response);

			
		}else if(path.equals("/Center/postEvent.ev") && request.getMethod().equals("POST")) {
			
				HttpSession currentSession = request.getSession() ; 
				Institution currentInstitution = (Institution) currentSession.getAttribute("user") ; 
				System.out.println(currentInstitution.getEmail());
			   String titre = request.getParameter("titre");
		        String description = request.getParameter("description");
		        String dateStr = request.getParameter("date");
		        String adresse = request.getParameter("adresse");
		        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		        Date date = null;
		        try {
		            date = dateFormat.parse(dateStr);
		        } catch (ParseException e) {
		            e.printStackTrace();
		        }
		        Evenement event = new Evenement();
		        event.setTitre(titre);
		        event.setDescription(description);
		        event.setDate(date);
		        event.setAdresse(adresse);
		        event.setInstitution(currentInstitution);

		        evenementDAO.ajouter(event);
		        response.sendRedirect(request.getContextPath()+"/Center/events.ev?success=Evenement ajoute avec succees") ; 
		}else if(path.equals("/Users/events.ev")) {
			List<Evenement> events = evenementDAO.getAllEvenements() ; 
			request.setAttribute("events", events) ;
			request.getRequestDispatcher("ListEvenments.jsp").forward(request,response);
		
		}else if(path.equals("/Users/singlDetailPage.ev")) {
			int eventId = Integer.parseInt(request.getParameter("id")); 
			Institution center = institutionDAO.getInstitutionByEventId(eventId)  ;
			List<Evenement> events = evenementDAO.getEventsByCenter(center.getId()) ; 
			request.setAttribute("events", events) ;
			request.setAttribute("center", center) ;
			request.getRequestDispatcher("singlDetailCenterPage.jsp").forward(request,response);
		
		}
		
		else{
			System.out.println("ok");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
