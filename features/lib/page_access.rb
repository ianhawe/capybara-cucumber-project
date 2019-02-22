require_relative 'pages/sparta_form'
require_relative 'pages/visit_sparta_website'

class SpartaWebpage
  def sparta_registration_form
    SpartaForm.new
  end
  def sparta_visit_sparta_website
    VisitSpartaPage.new
  end
end
