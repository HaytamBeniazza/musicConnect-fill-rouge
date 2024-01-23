package com.dao;

import com.beans.Pochette;

public interface PochetteDAO {
	
	public void ajouter(Pochette pochette) ; 
	public Pochette getPochetteById(int idPochette) ; 
	public void updatePochette(Pochette pochette) ;
	public void deletePochette(Pochette pochette) ; 

}
