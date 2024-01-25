package com.dao;

import java.util.List;

import com.beans.Blog;

public interface BlogDAO {
	
	public void addBlog(Blog blog) ;
	public List<Blog> getAll() ; 
	public void updateBlog(Blog blog); 
	public Blog getBlogById(long id) ; 
	public void deleteBlog(long id) ;
	public List<Blog> getBlogsByCenter(int id);

}
