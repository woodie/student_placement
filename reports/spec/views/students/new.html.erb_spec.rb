require 'rails_helper'

RSpec.describe "students/new", type: :view do
  before(:each) do
    assign(:student, Student.new(
      :email_address => "MyString",
      :username => "MyString",
      :first_name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :ethnicity => "MyString"
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do

      assert_select "input#student_email_address[name=?]", "student[email_address]"

      assert_select "input#student_username[name=?]", "student[username]"

      assert_select "input#student_first_name[name=?]", "student[first_name]"

      assert_select "input#student_middle_name[name=?]", "student[middle_name]"

      assert_select "input#student_last_name[name=?]", "student[last_name]"

      assert_select "input#student_ethnicity[name=?]", "student[ethnicity]"
    end
  end
end
