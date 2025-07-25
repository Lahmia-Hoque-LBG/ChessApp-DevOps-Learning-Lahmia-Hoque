package com.chessgame.model;

import lombok.Data;
import lombok.EqualsAndHashCode;


@Data
@EqualsAndHashCode
public class Position {

    //declaring constants for rows and columns
    private final int row; // 0-7
    private final int col; //0-7

    //constructor that uses chess notation
    public Position(String notation) {
        this.col = notation.charAt(0) - 'a';
        this.row = 8 - Character.getNumericValue(notation.charAt(1));
    }

    @Override
    public String toString() {
        return  "" + (char) ('a' + col) + (8 - row);
    }

}

