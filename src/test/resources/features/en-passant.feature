Feature: En Passant Capture
  As a player
  I want to use my pawn to capture an opponent's pawn en passant
  So that I can follow official chess rules and gain a tactical advantage

  Scenario: Valid en passant capture by White
    Given the chess board is set up
    And a black pawn has just moved from d7 to e5
    And a White pawn is on E5
    When the White pawn moves the pawn from E5 to D6 en passant
    Then the Black pawn on D5 should be captured
    And the White Pawn should be at D6

  Scenario: Valid en passant capture by Black
    Given the chess board is set up
    And a White pawn has just moved from E2 to E4
    And a Black pawn is on D4
    When the black pawn moves from D4 to E3 en passant
    Then the White pawn on E4 should be captured
    And the Black pawn should be at E3


  Scenario: Invalid en passant attempt after delay
    Given the chess board is set up
    And a Black Pawn has just moved from  D7 to D5
    And a White Pawn is on E5
    And the white pawn makes a different move
    When White tries to move the pawn from E5 to D6 en passant
    Then the move should be rejected
    And the Black pawn should remain at D5

  Scenario: En passant not allowed if pawn only moved one square
    Given the chess board is set up
    And a Black pawn has just moved from D7 to D6
    And a White pawn is on E5
    When White tries to move the pawn from E5 to D6 en passant
    Then the move should be rejected
    And both pawns should remain in their current positions