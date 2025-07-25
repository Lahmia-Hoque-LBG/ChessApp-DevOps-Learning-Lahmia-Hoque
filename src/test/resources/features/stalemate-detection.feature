Feature: Detecting Stalemate
  As a player
  I want to know when my opponent & I have reached a stalemate
  So that the drawn game can end

  Scenario: No legal moves and King is not in check
    Given the player has no legal moves available
    And the opponent has no legal moves available
    And the King is not in check
    When the turn of the opponent or player ends
    Then the System should declare a stalemate



