Feature: Move History
  As a player
  I want to see a history of moves made during the game by my opponent and myself
  So that I can review gameplay and undo some of them

  Scenario: Show a list of previous moves
    Given both players have made several moves in a game
    When the player opens the move history panel
    Then all moves made shall be listed in chronological order

  Scenario: Undo last move
    Given the player made the most recent move
    When the player selects undo
    The board should revert to the state before the player made their most recent move

