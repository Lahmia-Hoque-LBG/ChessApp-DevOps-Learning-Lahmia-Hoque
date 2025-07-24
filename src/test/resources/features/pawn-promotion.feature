Feature: Pawn Promotion
  As a player
  I want my pawn to be promoted when it reaches the final rank
  So that I can gain a stronger piece

  Scenario: Promote pawn to queen
    Given the chess board is set up
    And a White pawn is on g7
    When White moves the pawn from g7 to g8
    Then the pawn should be promoted to a queen
    And the new queen should be at g8

  Scenario: Underpromotion to knight
    Given the chess board is set up
    And a White pawn is on b7
    When White moves the pawn from b7 to b8 and chooses knight
    Then the pawn should be promoted to a knight
    And the new knight should be at b8

  Scenario: Invalid promotion attempt
    Given the chess board is set up
    And a White pawn is on g6
    When White tries to promote the pawn from g6 to g7
    Then the move should be rejected
    And the pawn should remain at g6

  Scenario: Underpromotion of a pawn to a bishop
    Given the chess board is set up
    And a pawn is on g7
    And promoting to a queen would result in stalemate
    When the player moves the pawn from g7 to g8 and chooses bishop
    Then the pawn should be promoted to a bishop
    And the bishop should be at g8
    And the game should continue without stalemate

  Scenario: Underpromotion of a pawn to a rook
    Given the chess board is set up
    And a pawn is on b7
    And promoting to a queen would result in stalemate
    When the player moves the pawn from b7 to b8 and chooses rook
    Then the pawn should be promoted to a rook
    And the rook should be at b8
    And the opponent should still have legal moves