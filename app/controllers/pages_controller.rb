class PagesController < ApplicationController
  def home
  end
  def download 
     pdf = Prawn::Document.new
     pdf.text 'Hello World'
    send_data(pdf.render,
              filename: 'hello pdf',
              type: 'application/pdf')
  end 
  def preview 
    pdf = Prawn::Document.new
    pdf.text 'This is a Preview '
    pdf.text  ' Its only show preview '
    pdf.start_new_page 
    pdf.text 'This is a new Page Preview'
    100.times do |i|
      pdf.text "This is a line #{i}"
    end 
    send_data(pdf.render,
              filename: 'hello pdf',
              type: 'application/pdf',
              disposition: 'inline')
  end 

end
