Feature: King Check Detection
  As a player
  I want to be notified if my king is in check
  So that I can avoid making illegal moves while the king is under

  Scenario: King is placed in check by opponent's queen
    Given the black queen is at D4
    And the White king is at D1
    When the black queen moves to D3
    Then the system should detect that the white King is in check


  Scenario: No check present
    Given all opponent pieces are out of range from the King
    When the player ends their Turn
    Then the King should not be reported as in check

