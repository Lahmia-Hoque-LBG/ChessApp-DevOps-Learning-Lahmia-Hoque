Feature: Game Initialisation
  As a player
  I want to start a new chess game
  So that I can begin to play chess

  Scenario: Start a new game
    Given the game interface is open
    When the player selects "Start Game"
    Then a standard 8 x 8 board should be initialised
    And pieces should be placed in their default positions