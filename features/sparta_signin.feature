Feature: Sparta Signin
  @check_login_details
  Scenario Outline: Inputting nothing will produce many errors
    Given I have access to the sparta form
    When I click sign-in
    Then I recieve multiple <errors>

    Examples:

      | errors                        |
      | Please enter your first name. |
      | Please enter your last name.  |
      | Please enter your age.        |
      | Please enter an address.      |
      | Please enter a postcode.      |
      | Please enter an email.        |
      | Please enter a phone number.  |

  Scenario: filling out the form minus the first name should produce an error message
    Given I have access to the sparta form
    And I fill in the form
    And I forget to write in my first name
    When I click sign-in
    Then I recieve an error prompt which tells me to enter my first name

  Scenario: filling out the form minus the first name should produce an error message
    Given I have access to the sparta form
    And I fill in the form
    And I forget to write in my last name
    When I click sign-in
    Then I recieve an error prompt which tells me to enter my last name

  Scenario: filling out the form minus the last name should produce an error message
    Given I have access to the sparta form
    And I fill in the form
    And I forget to write in my last name
    When I click sign-in
    Then I recieve an error prompt which tells me to enter my last name

  Scenario: filling out the form minus the age field should produce an error message
    Given I have access to the sparta form
    And I fill in the form
    And I forget to write in how old I am
    When I click sign-in
    Then I recieve an error prompt which tells me to enter my age

  Scenario: filling out the form minus the first address line should produce an error message
    Given I have access to the sparta form
    And I fill in the form
    And I forget to write an addresss
    When I click sign-in
    Then I recieve an error prompt which tells me to to enter an address

  Scenario: filling out the form minus the postcode should produce an error message
    Given I have access to the sparta form
    And I fill in the form
    And I forget to write my postcode down
    When I click sign-in
    Then I recieve an error prompt which tells me to to enter my postcode

  Scenario: filling out the form minus the email adress should produce an error message
    Given I have access to the sparta form
    And I fill in the form
    And I forget to write in my email address
    When I click sign-in
    Then I recieve an error prompt which tells me to enter email address

  Scenario: filling out the form minus the phone number should produce an error message
    Given I have access to the sparta form
    And I fill in the form
    And I forget to write a phone number down
    When I click sign-in
    Then I recieve an error prompt which tells me to write in a phone number