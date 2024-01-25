package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.beans.Donnateur;
import com.beans.Evenement;
import com.beans.Institution;
import com.beans.Pochette;
import com.dao.DonnateurDAO;
import com.dao.EvenementDAO;
import com.dao.PochetteDAO;

import daoImpl.DonnateurImpl;
import daoImpl.EvenementDAOImpl;
import daoImpl.PochetteDAOImpl;



@WebServlet(name="pc", urlPatterns = {"/pochetteController","*.pc"})
public class PochetteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private EvenementDAO evenementDAO = new EvenementDAOImpl() ; 
	private PochetteDAO pochetteDAO = new PochetteDAOImpl() ;  
	private DonnateurDAO donnateurDAO = new DonnateurImpl() ; 
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath() ; 
		if(path.equals("/Center/addPochette.pc")) {
			Evenement event = evenementDAO.getEvenementById(Integer.parseInt(request.getParameter("id"))) ; 
			List<Donnateur> donnateurs = donnateurDAO.getAll() ; 
			request.setAttribute("event", event) ;
			request.setAttribute("donnateurs", donnateurs) ;
			request.getRequestDispatcher("addpochette.jsp").forward(request,response);
		
		}else if(path.equals("/Center/postPochette.pc") && request.getMethod().equals("POST")) {
			
					String groupeSang = request.getParameter("groupeSang");
			        int qte = Integer.parseInt(request.getParameter("qte"));
			        int idDonnateur = Integer.parseInt(request.getParameter("donnateurId"));
			        int idEvenement = Integer.parseInt(request.getParameter("eventId"));
			        System.out.println(idDonnateur);
			        System.out.println(idEvenement);
			        Donnateur donnateur = donnateurDAO.getDonnateurById(idDonnateur);
			        Evenement evenement = evenementDAO.getEvenementById(idEvenement);
			        Pochette pochette = new Pochette();
			        pochette.setGroupeSang(groupeSang);
			        pochette.setQte(qte);
			        pochette.setDonnateur(donnateur);
			        pochette.setEvenement(evenement);
			        pochetteDAO.ajouter(pochette);
			        response.sendRedirect(request.getContextPath() + "/Center/events.ev?success=Pochette ajoute avec succes");
			    
		}else if(path.equals("/Center/pochettes.pc")) {
			String emptyy ; 
			Institution currentInstitution = (Institution) request.getSession().getAttribute("user") ; 
			
			List<Pochette> pochettes = pochetteDAO.getPochettesByCenter(currentInstitution.getId()) ; 
			request.setAttribute("pochettes", pochettes) ;
			if(pochettes.isEmpty()) {
				emptyy = "Aucun pochette pour ce centre" ; 
				request.setAttribute(emptyy, emptyy) ; 
			}
	        request.getRequestDispatcher("/Center/pochettes.jsp").forward(request, response);

	    
		}
		else if(path.equals("/Center/postDonnateur.pc") && request.getMethod().equals("POST")) { 
			
			String nom = request.getParameter("nom");
	        String prenom = request.getParameter("prenom");
	        String cin = request.getParameter("cin");
	        String tel = request.getParameter("tel");
	        String codeAnalyse = request.getParameter("codeAnalyse");
	        // Upload photoGenereAnalyse
	        String photoGenereAnalysePart = request.getParameter("photoGenereAnalyse");
	        // Create Donnateur object
	        Donnateur newDonnateur = new Donnateur();
	        newDonnateur.setNom(nom);
	        newDonnateur.setPrenom(prenom);
	        newDonnateur.setCin(cin);
	        newDonnateur.setTel(tel);
	        newDonnateur.setCodeAnalyse(codeAnalyse);
	        newDonnateur.setPhotoGenereAnalyse(photoGenereAnalysePart);
	        donnateurDAO.ajouter(newDonnateur);
	        response.sendRedirect(request.getContextPath() + "/Center/events.ev?success=Donnateur ajoute avec succes");
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
