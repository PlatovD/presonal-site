package io.github.platovd.dto.request;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class TestResultRequestDto {
    private String name;
    private Integer timeSeconds;
}
