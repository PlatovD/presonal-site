package io.github.platovd.dao;

import io.github.platovd.model.TestResult;
import lombok.RequiredArgsConstructor;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@RequiredArgsConstructor
public class TestResultDAOImpl implements TestResultDAO {
    private final SessionFactory factory;

    @Override
    public List<TestResult> getAllResultsSorted() {
        Session session = factory.getCurrentSession();
        return session.createQuery("SELECT res from TestResult res ORDER BY res.timeSeconds").getResultList();
    }

    @Override
    public void saveResult(TestResult testResult) {
        Session session = factory.getCurrentSession();
        session.persist(testResult);
    }
}
