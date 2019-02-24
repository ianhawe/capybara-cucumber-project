Feature: Bupa Signin
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
