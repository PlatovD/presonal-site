package io.github.platovd.model;

import jakarta.persistence.*;

@Entity
@Table(name = "technology")
public class Technology {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "technology_id")
    private int technologyId;

    @Column(name = "image_path")
    private String imagePath;

    @Column(name = "information")
    private String information;

    public Technology() {
    }

    public Technology(String imagePath, String information) {
        this.imagePath = imagePath;
        this.information = information;
    }

    public int getTechnologyId() {
        return technologyId;
    }

    public void setTechnologyId(int technologyId) {
        this.technologyId = technologyId;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }
}
