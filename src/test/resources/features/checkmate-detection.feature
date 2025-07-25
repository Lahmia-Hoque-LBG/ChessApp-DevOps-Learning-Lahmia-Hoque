Feature: Checkmate Detection
  As a player
  I want the game to detect and declare checkmate
  So that the game can end when no legal escape is possible for the King

  Scenario: King has no valid escape from attacking pieces
    Given the black king is at H8
    And the white queen is at H7
    And the white Rook is at G8
    When it is black's turn
    Then the system should detect checkmate

