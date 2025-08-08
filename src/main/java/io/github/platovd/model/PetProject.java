package io.github.platovd.model;

import jakarta.persistence.*;

@Entity
@Table(name = "pet_project")
public class PetProject {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pet_project_id")
    private int petProjectId;

    @Column(name = "name")
    private String name;

    @Column(name = "link")
    private String link;

    @Column(name = "image_path")
    private String imagePath;

    @Column(name = "description")
    private String description;

    public PetProject(String name, String link, String imagePath, String description) {
        this.name = name;
        this.link = link;
        this.imagePath = imagePath;
        this.description = description;
    }

    public PetProject() {
    }

    public int getPetProjectId() {
        return petProjectId;
    }

    public void setPetProjectId(int petProjectId) {
        this.petProjectId = petProjectId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
