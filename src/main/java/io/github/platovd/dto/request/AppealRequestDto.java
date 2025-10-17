package io.github.platovd.dto.request;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AppealRequestDto {
    private String name;
    private String contact;
    private String message;
}
