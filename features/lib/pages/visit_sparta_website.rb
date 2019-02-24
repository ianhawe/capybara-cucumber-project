require 'capybara/dsl'

# This holds all links associated with Sparta
class VisitSpartaPage
  include Capybara::DSL

  # Page Object
  SPARTA_FORM_URL = 'http://automation-form.spartaglobal.education/'

  def visit_sparta_form
    visit(SPARTA_FORM_URL)
  end
end
