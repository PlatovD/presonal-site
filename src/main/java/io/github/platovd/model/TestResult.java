package io.github.platovd.model;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Builder
@Table(name = "test_result")
public class TestResult {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "test_result_id")
    private Long testResult_id;

    @Column(name = "name")
    private String name;

    @Column(name = "time_seconds")
    private Integer timeSeconds;
}
