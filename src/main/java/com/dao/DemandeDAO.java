package com.dao;

import java.util.List;

import com.beans.Demande;

public interface DemandeDAO {
	
	public boolean addDemande(Demande demande); 
	public List<Demande> getAll() ; 
	public Demande getDemandeByID(int id) ; 
	public void updateDemande(Demande demande) ; 
	public void deleteDemande(int id) ;

}
