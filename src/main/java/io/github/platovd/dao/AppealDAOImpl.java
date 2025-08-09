package io.github.platovd.dao;

import io.github.platovd.model.Appeal;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AppealDAOImpl implements AppealDAO {
    private final SessionFactory factory;

    @Autowired
    public AppealDAOImpl(SessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public void saveAppeal(Appeal appeal) {
        Session session = factory.getCurrentSession();
        session.persist(appeal);
    }
}
