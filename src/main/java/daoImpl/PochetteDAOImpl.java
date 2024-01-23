package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.beans.Pochette;
import com.dao.PochetteDAO;

import databaseConfig.ConnectionInstance;


public class PochetteDAOImpl implements PochetteDAO{
	
    private Connection conn = ConnectionInstance.getConnection();
    private PochetteDAO pochetteDAO = new PochetteDAOImpl();

	@Override
	public void ajouter(Pochette pochette) {
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                "INSERT INTO `pochette` (`groupsang`, `qte`, `centre`) VALUES (?, ?, ?);"
            );

            preparedStatement.setString(1, pochette.getGroupeSang());
            preparedStatement.setInt(2, pochette.getQte());
            preparedStatement.setObject(3, pochette.getCentre());
            preparedStatement.executeUpdate();
            System.out.println("Insertion of Pochette successful");
        } catch (SQLException e) {
            e.printStackTrace();
        }
		
	}

	@Override
	public Pochette getPochetteById(int idPochette) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updatePochette(Pochette pochette) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePochette(Pochette pochette) {
		// TODO Auto-generated method stub
		
	}

}
