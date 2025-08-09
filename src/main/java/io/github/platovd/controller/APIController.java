package io.github.platovd.controller;

import io.github.platovd.dto.AppealRequestDTO;
import io.github.platovd.model.Appeal;
import io.github.platovd.service.AppealService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class APIController {
    private final AppealService appealService;

    public APIController(AppealService appealService) {
        this.appealService = appealService;
    }

    @PostMapping(value = "/saveAppeal", consumes = {"application/json"})
    public ResponseEntity<String> saveAppeal(@RequestBody AppealRequestDTO appealRequestDTO) {
        appealService.saveAppeal(new Appeal(appealRequestDTO.getName(), appealRequestDTO.getContact(), appealRequestDTO.getMessage()));
        return ResponseEntity.ok("Appeal saved to database");
    }
}
