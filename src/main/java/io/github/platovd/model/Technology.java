package io.github.platovd.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Setter
@Getter
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

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "technology_pet_project",
            joinColumns = @JoinColumn(name = "technology_id"),
            inverseJoinColumns = @JoinColumn(name = "pet_project_id")
    )
    private List<PetProject> petProjects;

    public Technology() {
    }

    public Technology(String imagePath, String information) {
        this.imagePath = imagePath;
        this.information = information;
    }
}
