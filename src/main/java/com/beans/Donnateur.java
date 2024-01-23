package com.beans;

public class Donnateur {

    private int idDonnateur;
    private String nom;
    private String prenom;
    private String cin;
    private String tel;
    private String codeAnalyse;
    private byte[] photoGenereAnalyse;

    public Donnateur() {
    }

    public Donnateur(int idDonnateur, String nom, String prenom, String cin, String tel, String codeAnalyse, byte[] photoGenereAnalyse) {
        this.idDonnateur = idDonnateur;
        this.nom = nom;
        this.prenom = prenom;
        this.cin = cin;
        this.tel = tel;
        this.codeAnalyse = codeAnalyse;
        this.photoGenereAnalyse = photoGenereAnalyse;
    }
    
    
    public int getIdDonnateur() {
        return idDonnateur;
    }

    public void setIdDonnateur(int idDonnateur) {
        this.idDonnateur = idDonnateur;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getCin() {
        return cin;
    }

    public void setCin(String cin) {
        this.cin = cin;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getCodeAnalyse() {
        return codeAnalyse;
    }

    public void setCodeAnalyse(String codeAnalyse) {
        this.codeAnalyse = codeAnalyse;
    }

    public byte[] getPhotoGenereAnalyse() {
        return photoGenereAnalyse;
    }

    public void setPhotoGenereAnalyse(byte[] photoGenereAnalyse) {
        this.photoGenereAnalyse = photoGenereAnalyse;
    }

}
