require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :email_address => "Email Address",
        :username => "Username",
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :ethnicity => "Ethnicity"
      ),
      Student.create!(
        :email_address => "Email Address",
        :username => "Username",
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :ethnicity => "Ethnicity"
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ethnicity".to_s, :count => 2
  end
end
