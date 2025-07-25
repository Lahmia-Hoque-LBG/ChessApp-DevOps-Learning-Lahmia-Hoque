package com.chessgame.engine;

import com.chessgame.model.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.Builder;

import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class GameState {
    private Board board;
    private PlayerColour currentTurn;
    private GameMode gameMode;
    private List<Move> moveHistory;
    private boolean isInCheck;
    private boolean isInCheckMate;
    private boolean isInStaleMate;
    private PlayerColour winner;
}
