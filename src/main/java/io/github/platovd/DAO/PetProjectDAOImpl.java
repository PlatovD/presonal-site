package io.github.platovd.DAO;

import io.github.platovd.model.PetProject;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PetProjectDAOImpl implements PetProjectDAO {
    private final SessionFactory factory;

    @Autowired
    public PetProjectDAOImpl(SessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public List<PetProject> getAllPetProjects() {
        return factory.getCurrentSession().createQuery("select pet from PetProject pet").getResultList();
    }
}
