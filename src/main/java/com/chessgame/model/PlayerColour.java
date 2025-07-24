package com.chessgame.model;

public enum PlayerColour {
    WHITE, BLACK;

    public PlayerColour opposite() {
        return this == WHITE ? BLACK : WHITE;
    }
}
