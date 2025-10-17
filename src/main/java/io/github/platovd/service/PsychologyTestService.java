package io.github.platovd.service;

import io.github.platovd.dao.TestResultDAO;
import io.github.platovd.dto.request.TestResultRequestDto;
import io.github.platovd.mapper.TestResultMapper;
import io.github.platovd.model.TestResult;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PsychologyTestService {
    private final TestResultDAO testResultDAO;
    private final TestResultMapper testResultMapper;

    @Transactional
    public void saveTestResult(TestResultRequestDto testResultRequestDto) {
        TestResult testResult = testResultMapper.toTestResult(testResultRequestDto);
        testResultDAO.saveResult(testResult);
    }

    @Transactional
    public List<TestResult> getAllTestResultsSorted() {
        return testResultDAO.getAllResultsSorted();
    }
}
