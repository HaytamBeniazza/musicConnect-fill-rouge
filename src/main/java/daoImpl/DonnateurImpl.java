package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.beans.Donnateur;
import com.dao.DonnateurDAO;

import databaseConfig.ConnectionInstance;

public class DonnateurImpl implements DonnateurDAO {
	
	private Connection conn = ConnectionInstance.getConnection() ; 
	
	public DonnateurImpl() {
	}

	@Override
	public void ajouter(Donnateur donnateur) {
	    try {
	        PreparedStatement preparedStatement = conn.prepareStatement("INSERT INTO `donnateur` (`nom`, `prenom`, `cin`, `tel`, `code_analyse`, `photo_genere_analyse`) VALUES (?,?,?,?,?,?);");

	        preparedStatement.setString(1, donnateur.getNom());
	        preparedStatement.setString(2, donnateur.getPrenom());
	        preparedStatement.setString(3, donnateur.getCin());
	        preparedStatement.setString(4, donnateur.getTel());
	        preparedStatement.setString(5, donnateur.getCodeAnalyse());
	        preparedStatement.setString(6, donnateur.getPhotoGenereAnalyse());

	        preparedStatement.executeUpdate();
	        System.out.println("Insertion of Donnateur successful");
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	public Donnateur getDonnateurById(int idDonnateur) {
	    Donnateur donnateur = null;

	    try {
	        PreparedStatement preparedStatement = conn.prepareStatement("SELECT * FROM `donnateur` WHERE `idDonnateur` = ?");
	        preparedStatement.setInt(1, idDonnateur);

	        ResultSet resultSet = preparedStatement.executeQuery();

	        if (resultSet.next()) {
	            // Retrieve data from the result set and create a Donnateur object
	            String nom = resultSet.getString("nom");
	            String prenom = resultSet.getString("prenom");
	            String cin = resultSet.getString("cin");
	            String tel = resultSet.getString("tel");
	            String codeAnalyse = resultSet.getString("code_analyse");
	            String photoGenereAnalyse = resultSet.getString("photo_genere_analyse");

	            donnateur = new Donnateur() ; 
	            donnateur.setIdDonnateur(idDonnateur);
	            donnateur.setNom(nom);
	            donnateur.setPrenom(prenom);
	            donnateur.setCin(cin);
	            donnateur.setTel(tel);
	            donnateur.setCodeAnalyse(codeAnalyse);
	            donnateur.setPhotoGenereAnalyse(photoGenereAnalyse);
	        }

	        resultSet.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return donnateur;
	}

	@Override
	public void updateDonnateur(Donnateur donnateur) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteDonnateur(Donnateur donnateur) {
		// TODO Auto-generated method stub
		
	}


	

		

}
