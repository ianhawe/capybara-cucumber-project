require 'capybara/dsl'
# This class will hold page objects and methods to interact with them

class SpartaForm
  include Capybara::DSL
  attr_accessor :first_name_error_message, :last_name_error_message, :age_error_message, :Date_of_birth_missing_error_message, :gender_missing_error_message, :degree_missing_error_message, :university_missing_error_message, :address_line1_error_message,
  :address_line2_missing_error_message, :city_missing_error_message, :county_missing_error_message, :postcode_error_message, :email_address_error_message, :skill_missing_error_message, :phone_number_error_message, :linkedin_missing_error_message, :upload_cv_missing_error_message, :stream_missing_error_message, :rating_slider_missing_error_message

  # Page Objects
  FIRSTNAME_TEXTBOX_ID = 'firstName'
  LASTNAME_TEXTBOX_ID = 'lastName'
  AGE_CSS_SELECTOR = '.form-row .form_group .form-control'
  DATE_OF_BIRTH_NAME = 'dob'
  GENDER_RADIO_BUTTONS_ID = 'customRadioInline1'
  DEGREE_XPATH = '/html/body/div/form/div[7]/div/input'
  UNIVERSITY_DROPDOWN_ID = 'inputUni'
  ADDRESS_LINE_ONE_ID = 'inputAddress'
  ADDRESS_LINE_TWO_ID = 'inputAddress2'
  CITY_ID = 'inputCity'
  COUNTY_ID = 'inputCounty'
  POSTCODE_ID = 'inputPostcode'
  EMAIL_ADDRESS_ID = 'inputemailaddress'
  SKILL_TEXT_AREA_ID = 'exampleFormControlTextarea1'
  PHONE_NUMBER_ID = 'exampleFormControlInput1'
  LINKEDIN_URL_XPATH = '/html/body/div/form/div[17]/div/input'
  CV_UPLOAD_NAME = 'cv'
  STREAM_XPATH = '/html/body/div/form/div[20]/div[2]/label'
  TERMS_AND_CONDITIONS_ID = 'terms'
  RATING_SLIDER_ID = 'experienceSlider'
  SIGN_IN_BUTTON = 'Sign in'

  # Error Message locations based on CSS
  FIRST_NAME_ERROR_MESSAGE_LOCATION = 'body > div > form > div:nth-child(1) > div > div'
  LAST_NAME_ERROR_MESSAGE_LOCATION = 'body > div > form > div:nth-child(2) > div > div' 
  AGE_ERROR_MESSAGE_LOCATION = 'body > div > form > div:nth-child(3) > div > div'
  ADDRESS_FIRST_LINE_ERROR_MESSAGE_LOCATION = 'body > div > form > div:nth-child(10) > div'
  POSTCODE_ERROR_MESSAGE_LOCATION = 'body > div > form > div:nth-child(14) > div > div'
  EMAIL_ADRESS_ERROR_MESSAGE_LOCATION = 'body > div > form > div:nth-child(15) > div > div'
  PHONE_NUMBER_ERROR_MESSAGE_LOCATION = 'body > div > form > div:nth-child(17) > div > div'

  def find_first_name_error_message
    find(:css, FIRST_NAME_ERROR_MESSAGE_LOCATION).text
  end

  def find_last_name_error_message
    find(:css, LAST_NAME_ERROR_MESSAGE_LOCATION).text
  end

  def find_age_error_message
    find(:css, AGE_ERROR_MESSAGE_LOCATION).text
  end

  def find_address_first_line_error_message
    find(:css, ADDRESS_FIRST_LINE_ERROR_MESSAGE_LOCATION).text
  end

  def find_post_code_error_message
    find(:css, POSTCODE_ERROR_MESSAGE_LOCATION).text
  end

  def find_email_address_error_message
    find(:css, EMAIL_ADRESS_ERROR_MESSAGE_LOCATION).text
  end

  def find_phone_number_error_message
    find(:css, PHONE_NUMBER_ERROR_MESSAGE_LOCATION).text
  end

  def click_sign_in_button
    click_button(SIGN_IN_BUTTON)
  end

  # Fill in methods
  def fill_in_first_name(first_name)
    fill_in(FIRSTNAME_TEXTBOX_ID, with: first_name)
  end

  def fill_in_last_name(last_name)
    fill_in(LASTNAME_TEXTBOX_ID, with: last_name)
  end

  def fill_in_age(age)
    fill_in(:css, AGE_CSS_SELECTOR).set(age)
  end

  def fill_in_date_of_birth(date_of_birth)
    fill_in(DATE_OF_BIRTH_NAME, with: date_of_birth)
  end

  def fill_in_gender(number)
    find(:xpath, GENDER_XPATH).click
  end

  def fill_in_degree(degree)
    find(:xpath, DEGREE_XPATH).set(degree)
  end

  def fill_in_university(university)
    select university, :from => UNIVERSITY_DROPDOWN_ID
  end

  def fill_in_address_line_one(address)
    fill_in(ADDRESS_LINE_ONE_ID, :with => address)
  end

  def fill_in_address_line_two(address2)
    fill_in(ADDRESS_LINE_TWO_ID, :with => address2)
  end

  def fill_in_city(city)
    fill_in(CITY_ID, :with => city)
  end

  def fill_in_county(county)
    select county, :from => COUNTY_ID
  end

  def fill_in_postcode(postcode)
    fill_in(POSTCODE_ID, :with => postcode)
  end

  def fill_in_email_address(email)
    fill_in(EMAIL_ADDRESS_ID, :with => email)
  end

  def fill_in_skills(skill_area)
    fill_in(SKILL_TEXT_AREA_ID, :with => skill_area)
  end

  def fill_in_phone_number(phone_number)
    fill_in(PHONE_NUMBER_ID, :with => phone_number)
  end

  def fill_in_linkedin_url(linkedin)
    find(:xpath, LINKEDIN_URL_XPATH).set(linkedin)
  end

  def fill_in_stream
    find(:xpath, STREAM_XPATH).click
  end

  def fill_in_terms_and_conditions
    find(TERMS_AND_CONDITIONS_ID).click
  end

  def fill_in_rating_slider
    puts "pending"
  end
end

  # Error messages
  # @first_name_error_message = 'Please enter your first name.'
  # @last_name_error_message = 'Please enter your last name.'
  # @age_error_message = 'Please enter your age.'
  # @Date_of_birth_missing_error_message = 'missing'
  # @gender_missing_error_message = 'missing'
  # @degree_missing_error_message = 'missing'
  # @university_missing_error_message = 'missing'
  # @address_line1_error_message = 'Please enter an address.'
  # @address_line2_missing_error_message = 'missing'
  # @city_missing_error_message = 'missing'
  # @county_missing_error_message = 'missing'
  # @postcode_error_message = 'Please enter a postcode.'
  # @email_address_error_message = 'Please enter an email.'
  # @skill_missing_error_message = 'missing'
  # @phone_number_error_message = 'Please enter a phone number.'
  # @linkedin_missing_error_message = 'missing'
  # @upload_cv_missing_error_message = 'missing'
  # @stream_missing_error_message = 'missing'
  # @rating_slider_missing_error_message = 'default is 50?'
