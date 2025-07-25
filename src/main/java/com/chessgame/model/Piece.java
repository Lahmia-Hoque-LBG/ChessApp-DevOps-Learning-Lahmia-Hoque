package com.chessgame.model;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

import java.util.List;


@Getter
@RequiredArgsConstructor
public abstract class Piece {
    protected final PlayerColour colour;

    public abstract char getSymbol(); //gets symbol of the piece

    public abstract List<Position> getValidMoves(Position from, Board board);

    public boolean isOpponent(Piece other) {
        return other != null && this.colour != other.colour;
    }

}
