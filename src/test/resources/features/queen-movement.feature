Feature: Queen Movement
  As a player
  I want my queen to move in any straight line
  So that I can control the board and capture strategically

  Scenario: Valid vertical movement
    Given the chess board is set up
    And a queen is on d1
    When the player moves the queen from d1 to d5
    Then the queen should be at d5
    And d1 should be empty

  Scenario: Valid horizontal movement
    Given the chess board is set up
    And a queen is on d5
    When the player moves the queen from d5 to h5
    Then the queen should be at h5
    And d5 should be empty

  Scenario: Valid diagonal movement
    Given the chess board is set up
    And a queen is on h5
    When the player moves the queen from h5 to e2
    Then the queen should be at e2
    And h5 should be empty

  Scenario: Queen captures opponent piece diagonally
    Given the chess board is set up
    And a queen is on e2
    And an opponent’s rook is on b5
    When the player moves the queen from e2 to b5
    Then the rook should be captured
    And the queen should be at b5

  Scenario: Invalid queen movement (L-shape like knight)
    Given the chess board is set up
    And a queen is on b5
    When the player tries to move the queen from b5 to c7
    Then the move should be rejected
    And the queen should remain at b5

  Scenario: Queen cannot jump over pieces
    Given the chess board is set up
    And a queen is on a1
    And a pawn is on c3
    When the player tries to move the queen from a1 to d4
    Then the move should be rejected
    And the queen should remain at a1

