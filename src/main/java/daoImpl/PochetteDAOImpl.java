package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.beans.Demande;
import com.beans.Pochette;
import com.dao.DonnateurDAO;
import com.dao.EvenementDAO;
import com.dao.PochetteDAO;
import databaseConfig.ConnectionInstance;

public class PochetteDAOImpl implements PochetteDAO {

    private Connection conn = ConnectionInstance.getConnection();
    private EvenementDAO evenementDAO = new EvenementDAOImpl() ; 
    private DonnateurDAO donnateurDAO = new DonnateurImpl() ;  

    @Override
    public void ajouter(Pochette pochette) {
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "INSERT INTO `pochette` (`groupe_sang`, `qte`, `event_id`, `donnateur_id`) VALUES (?, ?, ?, ?);");

            preparedStatement.setString(1, pochette.getGroupeSang());
            preparedStatement.setInt(2, pochette.getQte());
            preparedStatement.setInt(3, pochette.getEvenement().getIdEvent());
            preparedStatement.setInt(4, pochette.getDonnateur().getIdDonnateur());

            preparedStatement.executeUpdate();
            System.out.println("Insertion of Pochette successful");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Pochette getPochetteById(int idPochette) {
        Pochette pochette = null;

        try {
            PreparedStatement preparedStatement = conn.prepareStatement("SELECT * FROM `pochette` WHERE `id_pochette` = ?");
            preparedStatement.setInt(1, idPochette);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String groupeSang = resultSet.getString("groupe_sang");
                int qte = resultSet.getInt("qte");
                int eventId = resultSet.getInt("event_id");
                int donnateurId = resultSet.getInt("donnateur_id");

                pochette = new Pochette();
                pochette.setIdPochette(idPochette);
                pochette.setGroupeSang(groupeSang);
                pochette.setQte(qte);
                 pochette.setEvenement(evenementDAO.getEvenementById(eventId));
                 pochette.setDonnateur(donnateurDAO.getDonnateurById(donnateurId));
            }

            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return pochette;
    }

    @Override
    public void updatePochette(Pochette pochette) {
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "UPDATE `pochette` SET `groupe_sang` = ?, `qte` = ?, `event_id` = ?, `donnateur_id` = ? WHERE `id_pochette` = ?;");

            preparedStatement.setString(1, pochette.getGroupeSang());
            preparedStatement.setInt(2, pochette.getQte());
            preparedStatement.setInt(3, pochette.getEvenement().getIdEvent());
            preparedStatement.setInt(4, pochette.getDonnateur().getIdDonnateur());
            preparedStatement.setInt(5, pochette.getIdPochette());

            preparedStatement.executeUpdate();
            System.out.println("Update of Pochette successful");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deletePochette(Pochette pochette) {
        try {
            PreparedStatement preparedStatement = conn.prepareStatement("DELETE FROM `pochette` WHERE `id_Pochette` = ?;");
            preparedStatement.setInt(1, pochette.getIdPochette());

            preparedStatement.executeUpdate();
            System.out.println("Deletion of Pochette successful");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Pochette> getAll() {
    	Pochette pochette = null ; 
        List<Pochette> pochettes = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "SELECT * FROM pochette");

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
            	
            	 String groupeSang = resultSet.getString("groupe_sang");
                 int qte = resultSet.getInt("qte");
                 int eventId = resultSet.getInt("event_id");
                 int idPochette = resultSet.getInt("id_pochette");
                 int donnateurId = resultSet.getInt("donnateur_id");
                 
            	pochette = new Pochette();
                pochette.setIdPochette(idPochette);
                pochette.setGroupeSang(groupeSang);
                pochette.setQte(qte);

                 pochette.setEvenement(evenementDAO.getEvenementById(eventId));
                 pochette.setDonnateur(donnateurDAO.getDonnateurById(donnateurId));
                 pochettes.add(pochette);
            }

            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pochettes;
    }

	@Override
	public List<Pochette> getPochettesByCenter(int id) {
		Pochette pochette = null ; 
        List<Pochette> pochettes = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "SELECT * FROM pochette join institution i where i.id = ?");
            
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
            	
            	 String groupeSang = resultSet.getString("groupe_sang");
                 int qte = resultSet.getInt("qte");
                 int eventId = resultSet.getInt("event_id");
                 int idPochette = resultSet.getInt("id_pochette");
                 int donnateurId = resultSet.getInt("donnateur_id");
                 
            	pochette = new Pochette();
                pochette.setIdPochette(idPochette);
                pochette.setGroupeSang(groupeSang);
                pochette.setQte(qte);

                 pochette.setEvenement(evenementDAO.getEvenementById(eventId));
                 pochette.setDonnateur(donnateurDAO.getDonnateurById(donnateurId));
                 pochettes.add(pochette);
            }

            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pochettes;
	}
}
