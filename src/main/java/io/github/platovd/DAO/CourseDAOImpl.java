package io.github.platovd.DAO;

import io.github.platovd.model.Course;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CourseDAOImpl implements CourseDAO {
    private SessionFactory factory;

    @Autowired
    public CourseDAOImpl(SessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public List<Course> getAllCourse() {
        return factory.getCurrentSession().createQuery("SELECT course from Course course").getResultList();
    }
}
