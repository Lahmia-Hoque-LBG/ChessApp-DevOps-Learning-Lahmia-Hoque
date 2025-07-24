Feature: Pawn Diagonal Capture
  As a player
  I want my pawn to capture diagonally
  So that I can remove my opponent's pieces and advance strategically

  Scenario: Valid Diagonal Capture
    Given the chess board is set up
    And a Black Bishop is on D5
    And a White Pawn is on C4
    When the White Pawn moves from C4 to D5
    Then the Black Bishop should be captured
    And the White Pawn should be at D5


  Scenario: Invalid diagonal move with no piece to capture
    Given the chess board is set up
    And a white pawn is on C4
    And D5 is Empty
    When White tries to move the pawn from C4 to D5
    Then the move should be rejected
    And the pawn should remain at C4


  Scenario: Invalid diagonal move blocked by player's own piece
    Given the chess board is set up
    And a black pawn is on E6
    And a Black Bishop is on D5
    When the black pawn tries to move from E6 to D5
    Then the move is should be rejected
    And the black pawn should remain at E6
    And the black bishop should remain at D5