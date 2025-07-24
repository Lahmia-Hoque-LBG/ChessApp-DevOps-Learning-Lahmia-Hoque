Feature: Rook Movement
  As a player
  I want my rook to move horizontally and vertically
  So that I can control open files and ranks

  Scenario: Valid vertical movement
    Given the chess board is set up
    And a rook is on a1
    When the player moves the rook from a1 to a4
    Then the rook should be at a4
    And a1 should be empty

  Scenario: Valid horizontal movement
    Given the chess board is set up
    And a rook is on d4
    When the player moves the rook from d4 to g4
    Then the rook should be at g4
    And d4 should be empty

  Scenario: Rook captures opponent piece vertically
    Given the chess board is set up
    And a rook is on c1
    And an opponent’s knight is on c7
    When the player moves the rook from c1 to c7
    Then the knight should be captured
    And the rook should be at c7

  Scenario: Invalid diagonal move
    Given the chess board is set up
    And a rook is on h1
    When the player tries to move the rook from h1 to f3
    Then the move should be rejected
    And the rook should remain at h1

  Scenario: Rook cannot jump over pieces
    Given the chess board is set up
    And a rook is on a1
    And a pawn is on a2
    When the player tries to move the rook from a1 to a4
    Then the move should be rejected
    And the rook should remain at a1