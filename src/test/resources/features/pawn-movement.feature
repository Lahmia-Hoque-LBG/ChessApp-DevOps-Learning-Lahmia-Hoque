Feature: Pawn Movement
  As a player
  I want to move my pawn forward
  So that I can advance my pieces and play the game

  Scenario: Move pawn one space forward from initial position
    Given the chess board is set up
    And it is the Player's turn
    When the Player moves the pawn from E2 to E3
    Then the pawn should be at E3
    And E2 should be empty

  Scenario: Move pawn two spaces forward from initial position
    Given the chess board is set up
    And it is the AI/Computer's turn
    When AI/Computer moves the pawn from D7 to D5
    Then the pawn should be at D5
    And D7 should be empty


  Scenario: Invalid pawn movement (backwards)
    Given the chess board is set up
    And it is the AI/Computer's turn
    When the Player tries to move the pawn from E2 to E1
    Then the move should be rejected
    And an error message should be shown
