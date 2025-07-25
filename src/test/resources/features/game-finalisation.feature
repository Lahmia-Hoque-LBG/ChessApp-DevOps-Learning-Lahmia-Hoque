Feature: Game Finalisation
  As a player
  I want to be notified when my game is over and save my results
  So that I can close the game properly and exit the application

  Scenario: Game ends in checkmate
    Given the King is in a state of checkmate
    When the move is confirmed
    Then the game should end
    And the results should be saved

  Scenario: Game ends in stalemate
    Given no player has legal moves
    And the king is not in check
    When this state is detected
    Then the game should end in a draw