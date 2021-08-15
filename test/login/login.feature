Feature: Login
  Scenario: Goto Login Page
    Given Open application and user never login before
    Then Display email text field with empty text
    Then Display password text field with empty text
    And Display disabled login button

  Scenario: Cant login if user input invalid email address format
    Given Open application and user never login before
    When Input invalid email format
    Then Display disabled login button

  Scenario: Cant login if user input password less than 8 character
    Given Open application and user never login before
    When Input password less than 6 character
    Then Display disabled login button

  Scenario: Login success and goto home page
    Given Open application and user never login before
    And Input valid email format
    And Input password equal to 8 character
    And Display enabled login button
    When Tap login button and request Login API
    Then Display loading indicator
    And API response success and goto Home page
