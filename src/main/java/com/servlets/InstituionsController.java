package com.servlets;

import java.io.IOException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

import org.apache.catalina.connector.Response;

import com.beans.Institution;
import com.dao.InstitutionDAO;
import jakarta.servlet.RequestDispatcher;


import daoImpl.InstitutionDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet(name="in", urlPatterns = {"/institutionsController","*.in"})
public class InstituionsController extends HttpServlet {
	
	private InstitutionDAO metierInstitution = new InstitutionDAOImpl() ; 

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath() ; 
		if(path.equals("/register.in")) {
			request.getRequestDispatcher("/signup.jsp").forward(request,response);
			
		}else if(path.equals("/login.in")) {
			request.getRequestDispatcher("/login.jsp").forward(request,response);
		}
		
		else if(path.equals("/contact.in")) {
			request.getRequestDispatcher("/contact.jsp").forward(request,response);
			
		}else if(path.equals("/signup.in") && request.getMethod().equals("POST")) {
			
				String nom = request.getParameter("nom");
		        String tel = request.getParameter("tel");
		        String adresse = request.getParameter("adresse");
		        String email = request.getParameter("email");
		        String password = request.getParameter("password");
		        String espace = request.getParameter("espace"); 
		        
		        Institution institution = new Institution(nom, tel, adresse, email, password, espace) ; 
		        metierInstitution.createInstitution(institution) ; 
		        String success = "Compte "+espace+" ajouter avec succes" ; 
		        request.setAttribute("succes", success ) ; 
		        response.sendRedirect(request.getContextPath()+"/login.jsp?success="+success) ; 

		        
		        
		}else if(path.equals("/Hospital/centerDetails")){
			String centreIdParam = request.getParameter("id");
			if (centreIdParam != null && !centreIdParam.isEmpty()) {
	            try {
	            	int centreId = Integer.parseInt(centreIdParam);
	                Institution institution = metierInstitution.getById(centreId);
	                if (institution != null) {
	                    request.setAttribute("institution", institution);
	                    System.out.println("hello");
	                    
	                    RequestDispatcher dispatcher = request.getRequestDispatcher("/hospital/centerDetails.jsp");
	                    dispatcher.forward(request, response);
	                } else {
	                    response.sendRedirect("error.jsp");
	                    return;
	                }
	            } catch (NumberFormatException e) {
	                response.sendRedirect("error.jsp");
	                return;
	            }
	        } else {
	            response.sendRedirect("error.jsp");
	            return;
	        }
			
		}else if(path.equals("/logged.in") && request.getMethod().equals("POST")) {
			
			Institution institutionToLogin = new Institution()  ;
			String email = request.getParameter("email") ; 
			String password = request.getParameter("password") ; 
			System.out.println(password);
			String espace = request.getParameter("espace") ; 
			institutionToLogin = metierInstitution.getByEmail(email) ; 
			System.out.println(institutionToLogin.getEmail());
			System.out.println(institutionToLogin.getPassword());
			
			if(institutionToLogin!=null && institutionToLogin.isValid(email, password) && espace.equals("center")) {
				HttpSession session = request.getSession() ; 
				session.setMaxInactiveInterval(60 * 60 * 60);
    			session.setAttribute("user", institutionToLogin);
    	        response.sendRedirect(request.getContextPath()+"/Center/dashboard.jsp") ; 
			}else if(institutionToLogin!=null && institutionToLogin.isValid(email, password) && espace.equals("hospital")) {
				HttpSession session = request.getSession() ;
				session.setMaxInactiveInterval(60 * 60 * 60);
    			session.setAttribute("user", institutionToLogin);
    			
                List<Institution> institutions = metierInstitution.getAllByRole("center");
                if (institutions.isEmpty()) {
                    request.setAttribute("noInstitutions", true);
                } else {
                    request.setAttribute("institutions", institutions);
                }
                RequestDispatcher dispatcher = request.getRequestDispatcher("/Hospital/acceuil.jsp");
                dispatcher.forward(request, response);
                
    			
			}else {
	            String errorMessage = "email - mot de passe incorrect";
				request.setAttribute("error", errorMessage);
		        request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			
		}
		
		else{
			response.sendError(Response.SC_NOT_FOUND);		
		}	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
