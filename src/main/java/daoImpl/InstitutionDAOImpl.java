package daoImpl;

import com.beans.Institution;
import com.dao.InstitutionDAO;
import java.util.List;
import java.util.ArrayList;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import databaseConfig.ConnectionInstance;


public class InstitutionDAOImpl implements InstitutionDAO {
	
	private Connection conn = ConnectionInstance.getConnection() ; 

	public InstitutionDAOImpl() {
	}
	
    @Override
    public Institution getById(int id) {
    	Institution institution = null;

	    try {
	        PreparedStatement preparedStatement = conn.prepareStatement("SELECT * FROM `institution` WHERE `id` = ?");
	        preparedStatement.setInt(1, id);

	        ResultSet resultSet = preparedStatement.executeQuery();

	        if (resultSet.next()) {
	            String nom = resultSet.getString("nom");
	            String tel = resultSet.getString("tel");
	            String adresse = resultSet.getString("adresse");
	            String email = resultSet.getString("email");
	            String espace = resultSet.getString("espace");

	            institution = new Institution() ; 
	            institution.setId(id);
	            institution.setNom(nom);
	            institution.setTel(tel);
	            institution.setEmail(email);
	            institution.setAdresse(adresse);
	            institution.setEspace(espace);
	        }

	        resultSet.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return institution;
    }

    @Override
    public Institution getByEmail(String email) {
    	Institution institution = null;

	    try {
	        PreparedStatement preparedStatement = conn.prepareStatement("SELECT * FROM `institution` WHERE `email` = ?");
	        preparedStatement.setString(1, email);

	        ResultSet resultSet = preparedStatement.executeQuery();

	        if (resultSet.next()) {
	        	int id = resultSet.getInt("id");
	            String nom = resultSet.getString("nom");
	            String emailRs = resultSet.getString("email");
	            String tel = resultSet.getString("tel");
	            String adresse = resultSet.getString("adresse");
	            String password = resultSet.getString("password");
	            String espace = resultSet.getString("espace");

	            institution = new Institution() ; 
	            institution.setId(id);
	            institution.setNom(nom);
	            institution.setTel(tel);
	            institution.setAdresse(adresse);
	            institution.setEmail(emailRs);
	            institution.setPassword(password);
	            institution.setEspace(espace);
	        }

	        resultSet.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    

	    return institution;
    }

    @Override
    public boolean createInstitution(Institution espace) {
	    try {
	        PreparedStatement preparedStatement = conn.prepareStatement("INSERT INTO `institution`(`nom`, `tel`, `adresse`, `email`, `password`,`espace`) VALUES (?,?,?,?,?,?);");

	        preparedStatement.setString(1, espace.getNom());
	        preparedStatement.setString(2, espace.getTel());
	        preparedStatement.setString(3, espace.getAdresse());
	        preparedStatement.setString(4, espace.getEmail());
	        preparedStatement.setString(5, espace.getPassword());
	        preparedStatement.setString(6, espace.getEspace());

	        preparedStatement.executeUpdate();
	        
	        System.out.println("Insertion of Institution successful");
	        return true;
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return false;
    }

    @Override
    public boolean updateInstitution(Institution centre) {

        return false;
    }

    @Override
    public boolean deleteInstitution(int id) {

        return false;
    }

	@Override
	public List<Institution> getAllByRole(String role) {
		List<Institution> institutions = new ArrayList<>();

	    try {
	        PreparedStatement preparedStatement = conn.prepareStatement("SELECT * FROM `institution` WHERE `espace` = ?");
	        preparedStatement.setString(1, role);

	        ResultSet resultSet = preparedStatement.executeQuery();

	        while (resultSet.next()) {
	        		Institution institution = new Institution();
	        		institution.setId(resultSet.getInt("id"));
	        		institution.setNom(resultSet.getString("nom"));
	        		institution.setEmail(resultSet.getString("email"));
	        		institution.setTel(resultSet.getString("tel"));
	        		institution.setAdresse(resultSet.getString("adresse"));
	        		institution.setEspace(resultSet.getString("espace"));
		            		            
		            institutions.add(institution);
	        }

	        resultSet.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    

	    return institutions;
	}
	
	
	@Override
	public Institution getInstitutionByEventId(int eventId) {
		Institution institution = null;

	    try {
	        PreparedStatement preparedStatement = conn.prepareStatement("SELECT * FROM `institution` i join `evenement` e on i.id = e.centre_id  WHERE e.id_event = ?");
	        preparedStatement.setInt(1, eventId);

	        ResultSet resultSet = preparedStatement.executeQuery();

	        if (resultSet.next()) {
	        	int id = resultSet.getInt("id");
	            String nom = resultSet.getString("nom");
	            String emailRs = resultSet.getString("email");
	            String tel = resultSet.getString("tel");
	            String adresse = resultSet.getString("adresse");
	            String password = resultSet.getString("password");

	            institution = new Institution() ; 
	            institution.setId(id);
	            institution.setNom(nom);
	            institution.setTel(tel);
	            institution.setAdresse(adresse);
	            institution.setEmail(emailRs);
	            institution.setPassword(password);
	        }

	        resultSet.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    

	    return institution;
	}


}