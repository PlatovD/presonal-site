package io.github.platovd.mapper;

import io.github.platovd.dto.request.TestResultRequestDto;
import io.github.platovd.model.TestResult;
import org.springframework.stereotype.Component;

@Component
public class TestResultMapper {
    public TestResult toTestResult(TestResultRequestDto testResultRequestDto) {
        TestResult testResult = TestResult.builder()
                .name(testResultRequestDto.getName())
                .timeSeconds(testResultRequestDto.getTimeSeconds())
                .build();
        return testResult;
    }
}
