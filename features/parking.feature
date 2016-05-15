Feature: Test Parking calculator
  BR1 If the parking lot is Short term parking and the user choose parking for 30mins or less
  it should charge $1 else it should charge 2$ if its less than an hour

  Scenario: Selecting a Short Term Parking Lot
    Given User selects a lot in short term parking
    When User selects the parking for thirty mins
    Then User should be charged one dollar

  Scenario: Selecting a Short Term Parking Lot_longterm
    Given User selects a lot in short term parking
    When User selects the parking for more than thirty mins but less than one hour
    Then User should be charged two dollars