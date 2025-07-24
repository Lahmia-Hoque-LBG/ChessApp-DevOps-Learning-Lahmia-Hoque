Feature: Knight Movement
  As a player
  I want my knight to move in L-shaped patterns
  So that I can use its unique mobility during gameplay

  Scenario: Valid knight movement (two forward, one left)
    Given the chess board is set up
    And a knight is on g1
    When the player moves the knight from g1 to f3
    Then the knight should be at f3
    And g1 should be empty

  Scenario: Valid knight movement (one forward, two right)
    Given the chess board is set up
    And a knight is on b8
    When the player moves the knight from b8 to c6
    Then the knight should be at c6
    And b8 should be empty

  Scenario: Knight captures an opponent piece
    Given the chess board is set up
    And a knight is on e5
    And an opponent’s bishop is on d7
    When the player moves the knight from e5 to d7
    Then the bishop should be captured
    And the knight should be at d7

  Scenario: Invalid knight movement (straight forward)
    Given the chess board is set up
    And a knight is on g1
    When the player tries to move the knight from g1 to g2
    Then the move should be rejected
    And the knight should remain at g1

  Scenario: Knight jumps over pieces
    Given the chess board is set up
    And a knight is on b1
    And a pawn is on c2
    When the player moves the knight from b1 to d2
    Then the knight should be at d2
    And the pawn on c2 should remain untouched

