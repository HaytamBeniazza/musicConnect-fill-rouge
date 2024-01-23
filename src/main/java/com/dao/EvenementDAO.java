package com.dao;

import java.util.List;

import com.beans.Evenement;

public interface EvenementDAO {
	
	public void ajouter(Evenement Evenement) ; 
    public List<Evenement> getAllEvenements() ;
	public Evenement getEvenementById(int idEvenement) ; 
	public void updateEvenement(Evenement event) ;
	public void deleteEvenement(int idEvent) ; 
}
