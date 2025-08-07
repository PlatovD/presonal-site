package io.github.platovd.DAO;

import io.github.platovd.model.Technology;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TechnologiesDAOImpl implements TechnologiesDAO {
    private final SessionFactory factory;

    @Autowired
    public TechnologiesDAOImpl(SessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public List<Technology> getAllTechnologies() {
        Session session = factory.getCurrentSession();
        return session.createQuery("SELECT tech from Technology tech").getResultList();
    }
}
