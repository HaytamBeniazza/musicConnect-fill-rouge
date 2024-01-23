package com.dao;

import java.util.List;

import com.beans.Institution;

public interface InstitutionDAO {

    Institution getById(int id);

    Institution getByEmail(String email);

    boolean createInstitution(Institution institution);

    boolean updateInstitution(Institution institution);

    boolean deleteInstitution(int id);
    
    List<Institution> getAllByRole(String role);
}
