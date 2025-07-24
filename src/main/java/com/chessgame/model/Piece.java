package com.chessgame.model;

import com.chessgame.model.PlayerColour;
import java.util.List;

public abstract class Piece {
    protected PlayerColour colour;

    public Piece(PlayerColour colour) {
        this.colour = colour;
    }

    public PlayerColour getColour() {
        return colour;
    }

    public abstract char getSymbol(); //gets symbol of the piece

    public abstract List<Position> getValidMoves(Position from, Board board);

    public boolean isOpponent(Piece other) {
        return other != null && this.colour != other.colour;
    }

}
