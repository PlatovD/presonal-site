package io.github.platovd.controller;

import io.github.platovd.dto.request.AppealRequestDto;
import io.github.platovd.dto.request.TestResultRequestDto;
import io.github.platovd.model.Appeal;
import io.github.platovd.model.TestResult;
import io.github.platovd.service.AppealService;
import io.github.platovd.service.PsychologyTestService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class APIController {
    private final AppealService appealService;
    private final PsychologyTestService psychologyTestService;

    @PostMapping(value = "/saveAppeal", consumes = {"application/json"})
    public ResponseEntity<String> saveAppeal(@RequestBody AppealRequestDto appealRequestDTO) {
        appealService.saveAppeal(new Appeal(appealRequestDTO.getName(), appealRequestDTO.getContact(), appealRequestDTO.getMessage()));
        return ResponseEntity.ok("Appeal saved to database");
    }

    @PostMapping(value = "/saveResult", consumes = {"application/json"})
    public ResponseEntity<String> saveResult(@RequestBody TestResultRequestDto testResultRequestDto) {
        psychologyTestService.saveTestResult(testResultRequestDto);
        return ResponseEntity.ok("Result successfully saved to database");
    }
}
