package com.chessgame.model;

import jakarta.annotation.PostConstruct;
import lombok.Getter;
import org.springframework.stereotype.Component;

@Getter
@Component
public class Board {
    private final Piece[][] grid = new Piece[8][8];

    public Board() {
        //Can add constructor logic here if needed
    }

    @PostConstruct
    public void setUpBoard() {
        // To Do: add all pieces in their starting positions
        initialise();
    }

    public void initialise() {
        //logic for adding pieces to board
    }

    public Piece getPieceAt(Position pos) {
        return grid[pos.getRow()][pos.getCol()];
    }

    public void setPieceAt(Position pos, Piece piece) {
        grid[pos.getRow()][pos.getCol()] = piece;
    }

    public void movePiece(Position from, Position to) {
        Piece movingPiece = getPieceAt(from);
        setPieceAt(to, movingPiece);
        setPieceAt(from, null);
    }

    public boolean isValidPosition(Position pos) {
        return pos.getRow() >= 0 && pos.getRow() < 8 && pos.getCol() >= 0 && pos.getCol() < 8;
    }
}
