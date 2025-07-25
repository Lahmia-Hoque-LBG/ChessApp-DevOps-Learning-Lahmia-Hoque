package com.chessgame.service;

import com.chessgame.model.*;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;


@Service;
@Getter;
@RequiredArgsConstructor;
public class GameService {

    private final Board board;
    private PlayerColour currentTurn;

    public void startGame(PlayerColour chosenColour) {
        this.currentTurn = chosenColour;
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






}
