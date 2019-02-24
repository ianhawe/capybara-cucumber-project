Given("I have access to the sparta form") do
  @sparta_webpage = SpartaWebpage.new
  @sparta_webpage.sparta_visit_sparta_website.visit_sparta_form
end

When("I click sign-in") do
  @sparta_webpage.sparta_registration_form.click_sign_in_button
end

Then(/^I recieve multiple (.*)$/) do |error|
  expect(error).to eq(@sparta_webpage.sparta_registration_form.find_first_name_error_message)  | 
   eq(@sparta_webpage.sparta_registration_form.find_last_name_error_message)                   | 
   eq(@sparta_webpage.sparta_registration_form.find_age_error_message)                         |
   eq(@sparta_webpage.sparta_registration_form.find_address_first_line_error_message)          | 
   eq(@sparta_webpage.sparta_registration_form.find_post_code_error_message)                   | 
   eq(@sparta_webpage.sparta_registration_form.find_email_address_error_message)               | 
   eq(@sparta_webpage.sparta_registration_form.find_phone_number_error_message)
end

Given("I fill in the form") do
  @sparta_webpage.sparta_registration_form.fill_in_first_name('Mikando')
  @sparta_webpage.sparta_registration_form.fill_in_last_name('Wriggly')
  @sparta_webpage.sparta_registration_form.fill_in_age(21)
  @sparta_webpage.sparta_registration_form.fill_in_date_of_birth('24121991')
  @sparta_webpage.sparta_registration_form.fill_in_gender(0)
  @sparta_webpage.sparta_registration_form.fill_in_degree('Software Engineering')
  @sparta_webpage.sparta_registration_form.fill_in_university('University of Oxford')
  @sparta_webpage.sparta_registration_form.fill_in_address_line_one('73 Teignmouth close')
  @sparta_webpage.sparta_registration_form.fill_in_address_line_two('Clapham Common')
  @sparta_webpage.sparta_registration_form.fill_in_city('London')
  @sparta_webpage.sparta_registration_form.fill_in_county('South Yorkshire')
  @sparta_webpage.sparta_registration_form.fill_in_postcode('SW4 7BU')
  @sparta_webpage.sparta_registration_form.fill_in_email_address('bob@spartaglobal.com')
  @sparta_webpage.sparta_registration_form.fill_in_skills('ihudhiuaS')
  @sparta_webpage.sparta_registration_form.fill_in_phone_number('07932921382')
  @sparta_webpage.sparta_registration_form.fill_in_linkedin_url('spartaIn')
  # This line is left for a choose file method to be made
  # This line is left for a choose stream method to be made
  @sparta_webpage.sparta_registration_form.fill_in_terms_and_conditions
  #  This line is left for a choose slider rating method to be made
end

Given("I forget to write in my first name") do
  @sparta_webpage.sparta_registration_form.fill_in_first_name('')
end
Then("I recieve an error prompt which tells me to enter my first name") do
  expect(@sparta_webpage.sparta_registration_form.find_first_name_error_message).to eq @sparta_webpage.sparta_registration_form.first_name_error_message
end

Given("I forget to write in my last name") do
  @sparta_webpage.sparta_registration_form.fill_in_last_name('')
end

Then("I recieve an error prompt which tells me to enter my last name") do
  expect(@sparta_webpage.sparta_registration_form.find_last_name_error_message).to eq @sparta_webpage.sparta_registration_form.last_name_error_message
end

Given("I forget to write in how old I am") do
  @sparta_webpage.sparta_registration_form.fill_in_age('') 
end

Then("I recieve an error prompt which tells me to enter my age") do
  expect(@sparta_webpage.sparta_registration_form.find_age_error_message).to eq @sparta_webpage.sparta_registration_form.age_error_message 
end

Given("I forget to write an addresss") do
  @sparta_webpage.sparta_registration_form.fill_in_address_line_one('')
end

Then("I recieve an error prompt which tells me to to enter an address") do
  expect(@sparta_webpage.sparta_registration_form.find_address_first_line_error_message).to eq @sparta_webpage.sparta_registration_form.find_address_first_line_error_message
end

Given("I forget to write my postcode down") do
  @sparta_webpage.sparta_registration_form.fill_in_postcode('') 
end

Then("I recieve an error prompt which tells me to to enter my postcode") do
  expect(@sparta_webpage.sparta_registration_form.postcode_error_message).to eq @sparta_webpage.sparta_registration_form.find_post_code_error_message 
end

Given("I forget to write in my email address") do
  @sparta_webpage.sparta_registration_form.fill_in_email_address('')
end

Then("I recieve an error prompt which tells me to enter email address") do
  expect(@sparta_webpage.sparta_registration_form.find_email_address_error_message).to eq @sparta_webpage.sparta_registration_form.email_address_error_message
end

Given("I forget to write a phone number down") do
  @sparta_webpage.sparta_registration_form.fill_in_phone_number('')
end

Then("I recieve an error prompt which tells me to write in a phone number") do
 expect(@sparta_webpage.sparta_registration_form.find_phone_number_error_message).to eq @sparta_webpage.sparta_registration_form.phone_number_error_message
end
