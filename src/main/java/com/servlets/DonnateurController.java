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



@WebServlet(name="do", urlPatterns = {"/donnateurController","*.do"})
public class DonnateurController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DonnateurDAO donnateurDAO = new DonnateurImpl() ; 
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath() ; 
		if(path.equals("/Center/donnateur.do")) {
			List<Donnateur> donnateurs = donnateurDAO.getAll() ; 
			request.setAttribute("donnateurs", donnateurs) ;
			request.getRequestDispatcher("ListDonnateur.jsp").forward(request,response);
		
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
