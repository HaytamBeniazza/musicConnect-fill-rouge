package com.dao;

import java.util.List;

import com.beans.Demande;
import com.beans.Donnateur;

public interface DonnateurDAO {
	
	public void ajouter(Donnateur donnateur) ; 
	public Donnateur getDonnateurById(int idDonnateur) ; 
	public void updateDonnateur(Donnateur donnateur) ;
	public void deleteDonnateur(Donnateur donnateur) ; 
	public List<Donnateur> getAll();
}
