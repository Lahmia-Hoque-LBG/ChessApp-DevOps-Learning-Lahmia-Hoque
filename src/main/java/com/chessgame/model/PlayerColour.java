package com.chessgame.model;

public enum PlayerColour {
    WHITE("White");
    BLACK("Black");

    private final String displayName;

    PlayerColour(String displayName) {
        this.displayName = displayName;
    }

    public String getDisplayName() {
        return displayName;
    }

    public PlayerColour opposite() {
        return this == WHITE ? BLACK : WHITE;
    }
}
