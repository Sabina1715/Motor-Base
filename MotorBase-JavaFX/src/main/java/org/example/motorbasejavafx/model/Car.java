package org.example.motorbasejavafx.model;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class  Car{
    private Integer ID;
    private String type;
    private String mark;
    private String model;
    private Integer year_make;
    private Integer run;
    private String color;
    private String type_body;
    private String gearbox;
    private String engine_powers;
    private String engine_volume;
    private String all_driver;
}
