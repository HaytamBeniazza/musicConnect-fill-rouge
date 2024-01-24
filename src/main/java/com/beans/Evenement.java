package com.beans;

import java.util.Date;

public class Evenement {

    private int idEvent;
    private String titre;
    private String description;
    private Date date;
    private String adresse;
    private Institution institution ; 

    

    public Evenement() {
    }

    public Evenement(int idEvent, String titre, String description, Date date, String adresse) {
        this.idEvent = idEvent;
        this.titre = titre;
        this.description = description;
        this.date = date;
        this.adresse = adresse;
    }

    public int getIdEvent() {
        return idEvent;
    }

    public void setIdEvent(int idEvent) {
        this.idEvent = idEvent;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

	public Institution getInstitution() {
		return institution;
	}

	public void setInstitution(Institution institution) {
		this.institution = institution;
	}

}
