require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :email_address => "Email Address",
      :username => "Username",
      :first_name => "First Name",
      :middle_name => "Middle Name",
      :last_name => "Last Name",
      :ethnicity => "Ethnicity"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email Address/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Ethnicity/)
  end
end
