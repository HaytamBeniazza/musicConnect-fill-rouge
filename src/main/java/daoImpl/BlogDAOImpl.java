package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.beans.Blog;
import com.dao.BlogDAO;
import com.dao.InstitutionDAO;

import databaseConfig.ConnectionInstance;

public class BlogDAOImpl implements BlogDAO {

    private Connection conn = ConnectionInstance.getConnection();
    private InstitutionDAO metierIstitution = new InstitutionDAOImpl() ; 

    @Override
    public void addBlog(Blog blog) {
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                "INSERT INTO `blog` (`titreBlog`, `description`, `imageBlog`, `institution_id`) VALUES (?, ?, ?, ?);"
            );

            preparedStatement.setString(1, blog.getTitreBlog());
            preparedStatement.setString(2, blog.getDescription());
            preparedStatement.setString(3, blog.getImageBlog());
            preparedStatement.setLong(4, blog.getInstitution().getId()); 

            preparedStatement.executeUpdate();
            System.out.println("Insertion of Blog successful");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateBlog(Blog blog) {
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                "UPDATE `blog` SET `titreBblog`=?, `description`=?, `imageBlog`=?, `institution_id`=? WHERE `id`=?;"
            );

            preparedStatement.setString(1, blog.getTitreBlog());
            preparedStatement.setString(2, blog.getDescription());
            preparedStatement.setString(3, blog.getImageBlog());
            preparedStatement.setLong(4, blog.getInstitution().getId()); 
            preparedStatement.setLong(5, blog.getId());

            preparedStatement.executeUpdate();
            System.out.println("Update of Blog successful");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Blog getBlogById(long id) {
        Blog blog = null;

        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                "SELECT * FROM `blog` WHERE `id` = ?;"
            );
            preparedStatement.setLong(1, id);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                blog = new Blog();
                blog.setId(resultSet.getLong("id"));
                blog.setTitreBlog(resultSet.getString("titreBlog"));
                blog.setDescription(resultSet.getString("description"));
                blog.setImageBlog(resultSet.getString("imageBlog"));
                blog.setInstitution(metierIstitution.getById(resultSet.getInt("institution_id")));
            }

            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return blog;
    }

    @Override
    public void deleteBlog(long id) {
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                "DELETE FROM `blog` WHERE `id` = ?;"
            );
            preparedStatement.setLong(1, id);

            preparedStatement.executeUpdate();
            System.out.println("Deletion of Blog successful");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	@Override
	public List<Blog> getAll() {
		 List<Blog> blogs = new ArrayList<>();
	        try {
	        	Blog blog = null ; 
	            PreparedStatement preparedStatement = conn
	                    .prepareStatement("SELECT * FROM blog");

	            ResultSet resultSet = preparedStatement.executeQuery();

	            while (resultSet.next()) {
	                blog = new Blog();
	                blog.setId(resultSet.getLong("id"));
	                blog.setTitreBlog(resultSet.getString("titreBlog"));
	                blog.setDescription(resultSet.getString("description"));
	                blog.setImageBlog(resultSet.getString("imageBlog"));
	                blog.setInstitution(metierIstitution.getById(resultSet.getInt("institution_id")));
	                blogs.add(blog);
	            }
	            resultSet.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return blogs;
	}
	
	
	@Override
	public List<Blog> getBlogsByCenter(int id) {
		Blog blog = null ; 
        List<Blog> blogs = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = conn.prepareStatement("SELECT * FROM blog where institution_id = ?");
            
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {           
                 blog = new Blog();
	                blog.setId(resultSet.getLong("id"));
	                blog.setTitreBlog(resultSet.getString("titreBlog"));
	                blog.setDescription(resultSet.getString("description"));
	                blog.setImageBlog(resultSet.getString("imageBlog"));
	                blog.setInstitution(metierIstitution.getById(resultSet.getInt("institution_id")));
	                blogs.add(blog);
            }

            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return blogs;
	}
}
