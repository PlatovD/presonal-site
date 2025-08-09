package io.github.platovd.service;

import io.github.platovd.dao.PetProjectDAO;
import io.github.platovd.model.PetProject;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PetProjectService {
    private final PetProjectDAO petProjectDAO;

    @Autowired
    public PetProjectService(PetProjectDAO petProjectDAO) {
        this.petProjectDAO = petProjectDAO;
    }

    @Transactional
    public List<PetProject> getAllPetProject() {
        return petProjectDAO.getAllPetProjects();
    }
}
