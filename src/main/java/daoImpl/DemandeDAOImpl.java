package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.beans.Demande;
import com.dao.DemandeDAO;
import com.dao.InstitutionDAO;

import databaseConfig.ConnectionInstance;

public class DemandeDAOImpl implements DemandeDAO {

    private Connection conn = ConnectionInstance.getConnection();
    private InstitutionDAO metierInstitution = new InstitutionDAOImpl() ; 

    @Override
    public void addDemande(Demande demande) {
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "INSERT INTO demande (nbr_pochettes_demandes, nbr_pochettes_confirmes, groupe_sang, centre_id, hospital_id) VALUES (?, ?, ?, ?, ?);");

            preparedStatement.setInt(1, demande.getNbrPochettesDemandes());
            preparedStatement.setInt(2, demande.getNbrPochettesConfirmes());
            preparedStatement.setString(3, demande.getGroupeSang());
            preparedStatement.setInt(4, demande.getCentre().getId());
            preparedStatement.setInt(5, demande.getHospital().getId());

            preparedStatement.executeUpdate();
            System.out.println("Insertion of Demande successful");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Demande getDemandeByID(int id) {
        Demande demande = null;
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "SELECT * FROM demande WHERE id_demande = ?");
            preparedStatement.setInt(1, id);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                demande = extractDemandeFromResultSet(resultSet);
            }

            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return demande;
    }

    @Override
    public List<Demande> getAll() {
        List<Demande> demandes = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "SELECT * FROM demande");

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Demande demande = extractDemandeFromResultSet(resultSet);
                demandes.add(demande);
            }

            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return demandes;
    }

    @Override
    public void updateDemande(Demande demande) {
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "UPDATE demande SET nbr_pochettes_demandes = ?, nbr_pochettes_confirmes = ?, groupe_sang = ?, centre_id = ?, hospital_id = ? WHERE id_demande = ?");

            preparedStatement.setInt(1, demande.getNbrPochettesDemandes());
            preparedStatement.setInt(2, demande.getNbrPochettesConfirmes());
            preparedStatement.setString(3, demande.getGroupeSang());
            preparedStatement.setInt(4, demande.getCentre().getId());
            preparedStatement.setInt(5, demande.getHospital().getId());
            preparedStatement.setInt(6, demande.getIdDemande());

            preparedStatement.executeUpdate();
            System.out.println("Update of Demande successful");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteDemande(int id) {
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "DELETE FROM demande WHERE id_demande = ?");
            preparedStatement.setInt(1, id);

            preparedStatement.executeUpdate();
            System.out.println("Deletion of Demande successful");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private Demande extractDemandeFromResultSet(ResultSet resultSet) throws SQLException {
        Demande demande = new Demande();
        demande.setIdDemande(resultSet.getInt("id_demande"));
        demande.setNbrPochettesDemandes(resultSet.getInt("nbr_pochettes_demandes"));
        demande.setNbrPochettesConfirmes(resultSet.getInt("nbr_pochettes_confirmes"));
        demande.setGroupeSang(resultSet.getString("groupe_sang"));
        demande.setCentre(metierInstitution.getById(resultSet.getInt("centre_id")));
        demande.setHospital(metierInstitution.getById(resultSet.getInt("hospital_id")));
         return demande;
    }
}
