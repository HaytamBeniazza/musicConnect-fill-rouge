package com.beans;

public class Pochette {

    private int idPochette;
    private String groupeSang;
    private int qte;
    private Evenement evenement ;
    private Donnateur donnateur ;


    public Pochette() {
    }

    public Pochette(int idPochette, String groupeSang, int qte) {
        this.idPochette = idPochette;
        this.groupeSang = groupeSang;
        this.qte = qte;
    }
    
    public int getIdPochette() {
        return idPochette;
    }

    public void setIdPochette(int idPochette) {
        this.idPochette = idPochette;
    }

    public String getGroupeSang() {
        return groupeSang;
    }

    public void setGroupeSang(String groupeSang) {
        this.groupeSang = groupeSang;
    }

    public int getQte() {
        return qte;
    }

    public void setQte(int qte) {
        this.qte = qte;
    }


	public Evenement getEvenement() {
		return evenement;
	}

	public void setEvenement(Evenement evenement) {
		this.evenement = evenement;
	}

	public Donnateur getDonnateur() {
		return donnateur;
	}

	public void setDonnateur(Donnateur donnateur) {
		this.donnateur = donnateur;
	}
}
