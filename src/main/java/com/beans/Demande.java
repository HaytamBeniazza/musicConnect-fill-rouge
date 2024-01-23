package com.beans;

public class Demande {

    private int idDemande;
    private int nbrPochettesDemandes;
    private int nbrPochettesConfirmes;
    private String groupeSang;
    private Institution centre ; 
    private Institution hospital ; 
    
    
    public Demande() {
    }

    public Demande(int idDemande, int nbrPochettesDemandes, int nbrPochettesConfirmes, String groupeSang) {
        this.idDemande = idDemande;
        this.nbrPochettesDemandes = nbrPochettesDemandes;
        this.nbrPochettesConfirmes = nbrPochettesConfirmes;
        this.groupeSang = groupeSang;
    }

    public int getIdDemande() {
        return idDemande;
    }

    public void setIdDemande(int idDemande) {
        this.idDemande = idDemande;
    }

    public int getNbrPochettesDemandes() {
        return nbrPochettesDemandes;
    }

    public void setNbrPochettesDemandes(int nbrPochettesDemandes) {
        this.nbrPochettesDemandes = nbrPochettesDemandes;
    }

    public int getNbrPochettesConfirmes() {
        return nbrPochettesConfirmes;
    }

    public void setNbrPochettesConfirmes(int nbrPochettesConfirmes) {
        this.nbrPochettesConfirmes = nbrPochettesConfirmes;
    }

    public String getGroupeSang() {
        return groupeSang;
    }

    public void setGroupeSang(String groupeSang) {
        this.groupeSang = groupeSang;
    }

	public Institution getCentre() {
		return centre;
	}

	public void setCentre(Institution centre) {
		this.centre = centre;
	}

	public Institution getHospital() {
		return hospital;
	}

	public void setHospital(Institution hospital) {
		this.hospital = hospital;
	}
}
