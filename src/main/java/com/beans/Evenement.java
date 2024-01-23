package com.beans;

import java.util.Date;

public class Evenement {

    private String idEvent;
    private String titre;
    private String description;
    private Date date;
    private String adresse;
    private Donnateur donnateur ; 

    public Evenement() {
    }

    public Evenement(String idEvent, String titre, String description, Date date, String adresse) {
        this.idEvent = idEvent;
        this.titre = titre;
        this.description = description;
        this.date = date;
        this.adresse = adresse;
    }

    public String getIdEvent() {
        return idEvent;
    }

    public void setIdEvent(String idEvent) {
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
}
