package com.chessgame.model;

public class Position {

    //declaring constants for rows and columns
    private final int row; // 0-7
    private final int col; //0-7

    //basic constructor
    public Position(int row, int col) {
        this.row = row;
        this.col = col;
    }

    //constructor that uses chess notation
    public Position(String notation) {
        this.col = notation.charAt(0);
        this.row = 8 - Character.getNumericValue(notation.charAt(1));
    }

    public int getRow() {
        return row;
    }

    public int getCol() {
        return col;
    }

    @Override
    public boolean equals(Object obj) {
       //implement equality based on coordinates
    }

    @Override
    public int hashCode() {
        //implement hash code for hashing

    }

    @Override
    public String toString() {
        return "" + (char) ('a' + col) + (8 - row); //returns location like e4 etc.,
    }

}
