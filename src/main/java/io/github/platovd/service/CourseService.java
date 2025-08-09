package io.github.platovd.service;

import io.github.platovd.dao.CourseDAO;
import io.github.platovd.model.Course;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService {
    private final CourseDAO courseDAO;

    @Autowired
    public CourseService(CourseDAO courseDAO) {
        this.courseDAO = courseDAO;
    }

    @Transactional
    public List<Course> getAllCourse() {
        return courseDAO.getAllCourse();
    }
}
