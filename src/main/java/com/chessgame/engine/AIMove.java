package com.chessgame.engine;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class AIMove {
    private Move move;
    private String explanation;
}
