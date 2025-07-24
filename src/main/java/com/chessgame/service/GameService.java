package com.chessgame.service;
import com.chessgame.model.*;

public class GameService {
    private final Board board;
    private PlayerColour currentTurn;

    public GameService() {
        this.board = new Board();
        this.currentTurn = PlayerColour.WHITE;
    }

    public boolean attemptMove(Move move) {
        Piece piece = board.getPieceAt(move.getFrom());

        if (piece == null || piece.getColour() != currentTurn) return false;

        if (piece.getValidMoves(move.getFrom(), board).contains(move.getTo())) {
            board.movePiece(move.getFrom(), move.getTo());
            switchTurn();
            return true;
        }

        return false;

    }

    private void switchTurn() {
        currentTurn = currentTurn.opposite();
    }

    public Board getBoard() {
        return board;
    }

    public PlayerColour getCurrentTurn() {
        return currentTurn;
    }



}
