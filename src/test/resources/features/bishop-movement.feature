Feature: Bishop Movement
  As a player
  I want my bishop to move diagonally on the chess board
  So that I can control long-range squares and capture strategically

  Scenario: Valid diagonal movement
    Given the chess board is set up
    And a bishop is on c1
    When the player moves the bishop from c1 to f4
    Then the bishop should be at f4
    And c1 should be empty

  Scenario: Bishop captures an opponent piece diagonally
    Given the chess board is set up
    And a bishop is on f4
    And an opponent’s knight is on h6
    When the player moves the bishop from f4 to h6
    Then the knight should be captured
    And the bishop should be at h6

  Scenario: Invalid bishop movement (non-diagonal)
    Given the chess board is set up
    And a bishop is on c1
    When the player tries to move the bishop from c1 to c3
    Then the move should be rejected
    And the bishop should remain at c1

  Scenario: Bishop cannot jump over pieces
    Given the chess board is set up
    And a bishop is on c1
    And a pawn is on d2
    When the player tries to move the bishop from c1 to e3
    Then the move should be rejected
    And the bishop should remain at c1

  Scenario: Bishop moves along long diagonal
    Given the chess board is set up
    And a bishop is on a1
    And all squares along the a1-h8 diagonal are empty
    When the player moves the bishop from a1 to h8
    Then the bishop should be at h8
    And a1 should be empty


