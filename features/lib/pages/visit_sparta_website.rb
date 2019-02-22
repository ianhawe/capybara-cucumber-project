require 'capybara/dsl'

class VisitSpartaPage
  include Capybara::DSL

  # Page Object
  SPARTA_FORM_URL = 'http://automation-form.spartaglobal.education/'

  def visit_sparta_form
    visit(SPARTA_FORM_URL)
  end
end
