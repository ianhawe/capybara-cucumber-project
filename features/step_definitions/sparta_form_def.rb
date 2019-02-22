Given("I have access to the sparta form") do
  @sparta_webpage = SpartaWebpage.new
  @sparta_webpage.sparta_visit_sparta_website.visit_sparta_form
end

When("I click sign-in") do
  @sparta_webpage.sparta_registration_form.click_sign_in_button
end

Then(/^I recieve multiple (.*)$/) do |error|
  expect(error).to eq(@sparta_webpage.sparta_registration_form.find_first_name_error_message) | 
  eq(@sparta_webpage.sparta_registration_form.find_last_name_error_message)                   | 
  eq(@sparta_webpage.sparta_registration_form.find_age_error_message)                         |
  eq(@sparta_webpage.sparta_registration_form.find_address_first_line_error_message)          | 
  eq(@sparta_webpage.sparta_registration_form.find_post_code_error_message)                   | 
  eq(@sparta_webpage.sparta_registration_form.find_email_address_error_message)               | 
  eq(@sparta_webpage.sparta_registration_form.find_phone_number_error_message)

  # I can stringify all the errors and place them in a data map
  # Issue = I don't know how to check for multiple expects
end
