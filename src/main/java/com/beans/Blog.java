package com.beans;

public class Blog {

	private long id  ; 
    private String titreBlog;
    private String description;
    private String imageBlog;
    private Institution institution ; 

    public Blog() {
    }

    public Blog(String titreBlog, String description, String imageBlog) {
        this.titreBlog = titreBlog;
        this.description = description;
        this.imageBlog = imageBlog;
    }
    
    public String getTitreBlog() {
        return titreBlog;
    }

    public void setTitreBlog(String titreBlog) {
        this.titreBlog = titreBlog;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageBlog() {
        return imageBlog;
    }

    public void setImageBlog(String imageBlog) {
        this.imageBlog = imageBlog;
    }

	public Institution getInstitution() {
		return institution;
	}

	public void setInstitution(Institution institution) {
		this.institution = institution;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
}
