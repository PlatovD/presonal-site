package io.github.platovd.dto;

import lombok.Data;

@Data
public class AppealRequestDTO {
    private String name;
    private String contact;
    private String message;

    public AppealRequestDTO() {
    }
}
