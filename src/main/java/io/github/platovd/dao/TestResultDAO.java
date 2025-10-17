package io.github.platovd.dao;

import io.github.platovd.model.TestResult;

import java.util.List;

public interface TestResultDAO {
    List<TestResult> getAllResultsSorted();

    void saveResult(TestResult testResult);
}
