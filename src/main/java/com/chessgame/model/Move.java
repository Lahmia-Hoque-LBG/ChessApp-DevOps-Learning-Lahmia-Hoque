package com.chessgame.model;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public class Move {
    private final Position from;
    private final Position to;

    @Override
    public String toString() {
        return from + " to " + to;
    }

}
