package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.beans.Blog;
import com.beans.Institution;
import com.dao.BlogDAO;
import com.dao.InstitutionDAO;

import daoImpl.BlogDAOImpl;
import daoImpl.InstitutionDAOImpl;


@WebServlet(name="bce", urlPatterns = {"/blogController","*.bce"})
public class BlogServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private BlogDAO metierBlog = new BlogDAOImpl() ; 
	private InstitutionDAO metierInstitution = new InstitutionDAOImpl() ; 

	
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath() ; 
		if(path.equals("/Center/blog.bce")) {
			List<Blog> blogs = metierBlog.getAll() ; 
			request.setAttribute("blogs", blogs) ;
			request.getRequestDispatcher("blog.jsp").forward(request,response);
			
		}else if(path.equals("/Center/blogForm.bce")) {

			request.getRequestDispatcher("AddBlog.jsp").forward(request,response);
			
		}else if(path.equals("/Center/postBlogForm.bce") && request.getMethod().equals("POST")) {
			
			HttpSession currentSession = request.getSession() ; 
			Institution currentIstitution = (Institution) currentSession.getAttribute("user") ; 
			String titreBlog = request.getParameter("titre");
		    String description = request.getParameter("description");
		    String imageBlog = request.getParameter("image"); 
		    
		    System.out.println(titreBlog);
		    System.out.println(currentIstitution.getId());
 
		    Blog newBlog = new Blog(titreBlog, description, imageBlog);
		    newBlog.setInstitution(metierInstitution.getById(currentIstitution.getId())); 

		    metierBlog.addBlog(newBlog);
	        response.sendRedirect(request.getContextPath()+"/Center/blog.bce?success=Blog ajoute avec succees") ; 
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
