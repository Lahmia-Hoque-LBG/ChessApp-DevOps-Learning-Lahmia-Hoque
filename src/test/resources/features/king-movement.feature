Feature: King Movement
  As a player
  I want my king to move one square in any direction
  So that I can protect him and avoid checkmate

  Scenario: Valid single-square movement
    Given the chess board is set up
    And the king is on e1
    When the player moves the king from e1 to e2
    Then the king should be at e2
    And e1 should be empty

  Scenario: King captures opponent piece
    Given the chess board is set up
    And the king is on d4
    And an opponent’s pawn is on c5
    When the player moves the king from d4 to c5
    Then the pawn should be captured
    And the king should be at c5

  Scenario: Invalid king movement (too far)
    Given the chess board is set up
    And the king is on e1
    When the player tries to move the king from e1 to e3
    Then the move should be rejected
    And the king should remain at e1

  Scenario: King cannot move into check
    Given the chess board is set up
    And the king is on e1
    And an opponent’s rook is on e8
    When the player tries to move the king from e1 to e2
    Then the move should be rejected
    And the king should remain at e1

  Scenario: Valid king-side castling
    Given the chess board is set up
    And the king is on e1
    And the rook is on h1
    And all squares between them are empty
    And neither piece has moved
    And the king is not in check
    When the player castles king-side
    Then the king should be at g1
    And the rook should be at f1

  Scenario: Invalid castling through check
    Given the chess board is set up
    And the king is on e1
    And the rook is on h1
    And an opponent’s bishop is attacking f1
    When the player tries to castle king-side
    Then the move should be rejected
    And the king should remain at e1
    And the rook should remain at h1

