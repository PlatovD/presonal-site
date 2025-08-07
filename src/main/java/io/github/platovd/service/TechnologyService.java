package io.github.platovd.service;

import io.github.platovd.DAO.TechnologiesDAO;
import io.github.platovd.model.Technology;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TechnologyService {
    private final TechnologiesDAO technologiesDAO;

    @Autowired
    public TechnologyService(TechnologiesDAO technologiesDAO) {
        this.technologiesDAO = technologiesDAO;
    }

    @Transactional
    public List<Technology> getAllTechnology() {
        return technologiesDAO.getAllTechnologies();
    }
}
