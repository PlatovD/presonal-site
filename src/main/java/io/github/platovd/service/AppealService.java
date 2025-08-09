package io.github.platovd.service;

import io.github.platovd.dao.AppealDAO;
import io.github.platovd.model.Appeal;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AppealService {
    private final AppealDAO dao;

    @Autowired
    public AppealService(AppealDAO dao) {
        this.dao = dao;
    }

    @Transactional
    public void saveAppeal(Appeal appeal) {
        dao.saveAppeal(appeal);
    }
}
