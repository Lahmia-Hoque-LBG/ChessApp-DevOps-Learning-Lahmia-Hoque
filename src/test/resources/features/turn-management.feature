Feature: Managing turns
  As a player
  I want the system to indicate whose turn it is
  So that I can play chess fairly

  Scenario: Player attempts to move on an opponent's turn
    Given it is black's turn
    When white tries to move a piece
    Then the system should prevent the move


  Scenario: Turn successfully passed to opponent
    Given the player has made their move
    When the move is complete
    Then the system should show that it is the opponent's turn