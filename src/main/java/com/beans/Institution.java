package com.beans;

public class Institution {
	
	 protected int id;
	    private String nom;
	    private String tel;
	    private String adresse;
	    private String email;
	    private String password;
	    private String espace ; 
	    

	    public Institution() {
	    }

	    public Institution(String nom, String tel, String adresse, String email, String password, String espace) {
	        this.nom = nom;
	        this.tel = tel;
	        this.adresse = adresse;
	        this.email = email;
	        this.password = password;
	        this.espace = espace ;  
	    }
	    
	    
	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    public String getNom() {
	        return nom;
	    }

	    public void setNom(String nom) {
	        this.nom = nom;
	    }

	    public String getTel() {
	        return tel;
	    }

	    public void setTel(String tel) {
	        this.tel = tel;
	    }

	    public String getAdresse() {
	        return adresse;
	    }

	    public void setAdresse(String adresse) {
	        this.adresse = adresse;
	    }

	    public String getEmail() {
	        return email;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }

	    public String getPassword() {
	        return password;
	    }

	    public void setPassword(String password) {
	        this.password = password;
	    }

	
		public String getEspace() {
			return espace;
		}

		public void setEspace(String espace) {
			this.espace = espace;
		}

		
		public boolean isValid(String email, String password) {
			return (this.password.equals(password) && this.email.equals(email)) ; 
			
		}
	    


}
