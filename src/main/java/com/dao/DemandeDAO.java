package com.dao;

import java.util.List;

import com.beans.Demande;

public interface DemandeDAO {
	
	public boolean addDemande(Demande demande); 
	public List<Demande> getAll() ; 
	public Demande getDemandeByID(int id) ; 
	public void updateDemande(Demande demande) ; 
	public void updateDemandeToMatchConfirms(Demande demande) ; 
	public void deleteDemande(int id) ;
	public List<Demande> getAnswersByHospital(int id);
	public List<Demande> getAnswersByCenter(int id);
	public void updateDemandeTochangeConfirms(Demande demande);
}
