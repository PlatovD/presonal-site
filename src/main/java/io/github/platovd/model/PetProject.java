package io.github.platovd.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Setter
@Getter
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

    @Column(name = "role")
    private String role;

    @Column(name = "status")
    private String status;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "technology_pet_project",
            joinColumns = @JoinColumn(name = "pet_project_id"),
            inverseJoinColumns = @JoinColumn(name = "technology_id")
    )
    private List<Technology> technologies;


    public PetProject(String name, String link, String imagePath, String description) {
        this.name = name;
        this.link = link;
        this.imagePath = imagePath;
    }

    public PetProject() {
    }
}
