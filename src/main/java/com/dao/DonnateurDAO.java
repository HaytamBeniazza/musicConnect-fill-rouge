package com.dao;

import com.beans.Donnateur;

public interface DonnateurDAO {
	
	public void ajouter(Donnateur donnateur) ; 
	public Donnateur getDonnateurById(int idDonnateur) ; 
	public void updateDonnateur(Donnateur donnateur) ;
	public void deleteDonnateur(Donnateur donnateur) ; 

}
