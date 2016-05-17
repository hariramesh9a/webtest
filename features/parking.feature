        Feature: Test parking algorithm
          Br  lot charges 1 dollar per 30 minutes for every other 30  minutes one dollar will be added up
          Scenario: Validate short term parking
            Given when user choose half and hour parking
            When he exits the parking lot
            Then user is charged with one dollar

