package com.dao;

import java.util.List;

import com.beans.Pochette;

public interface PochetteDAO {
	
	public void ajouter(Pochette pochette) ; 
	public List<Pochette> getAll();  
	public Pochette getPochetteById(int idPochette) ; 
	public void updatePochette(Pochette pochette) ;
	public void deletePochette(Pochette pochette) ;
	public List<Pochette> getPochettesByCenter(int id); 

}
