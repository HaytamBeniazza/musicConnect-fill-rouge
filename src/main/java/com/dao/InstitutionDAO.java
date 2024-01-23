package com.dao;

import com.beans.Institution;

public interface InstitutionDAO {

    Institution getById(int id);

    Institution getByEmail(String email);

    boolean createInstitution(Institution institution);

    boolean updateInstitution(Institution institution);

    boolean deleteInstitution(int id);
}
