package io.github.platovd.model;

import jakarta.persistence.*;

@Entity
@Table(name = "course")
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "course_id")
    private int courseId;

    @Column(name = "name")
    private String name;

    @Column(name = "certificate_img_path")
    private String certificateImgPath;

    public Course(String name, String certificateImgPath) {
        this.name = name;
        this.certificateImgPath = certificateImgPath;
    }

    public Course() {
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCertificateImgPath() {
        return certificateImgPath;
    }

    public void setCertificateImgPath(String certificateImgPath) {
        this.certificateImgPath = certificateImgPath;
    }
}
