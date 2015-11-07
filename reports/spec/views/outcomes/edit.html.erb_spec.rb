require 'rails_helper'

RSpec.describe "outcomes/edit", type: :view do
  before(:each) do
    @outcome = assign(:outcome, Outcome.create!(
      :supervisor_name => "MyString",
      :supervisor_email_address => "MyString",
      :job_title => "MyString",
      :department => "MyString",
      :currently_active => false,
      :salary => 1,
      :pay_period => "MyString",
      :description => "MyText",
      :employer_name => "MyString",
      :employer_phone => "MyString",
      :employer_email_address => "MyString",
      :status => "MyString",
      :job_type_name => "MyString",
      :employment_type_name => "MyString",
      :industry_name => "MyString",
      :student => nil,
      :location => nil
    ))
  end

  it "renders the edit outcome form" do
    render

    assert_select "form[action=?][method=?]", outcome_path(@outcome), "post" do

      assert_select "input#outcome_supervisor_name[name=?]", "outcome[supervisor_name]"

      assert_select "input#outcome_supervisor_email_address[name=?]", "outcome[supervisor_email_address]"

      assert_select "input#outcome_job_title[name=?]", "outcome[job_title]"

      assert_select "input#outcome_department[name=?]", "outcome[department]"

      assert_select "input#outcome_currently_active[name=?]", "outcome[currently_active]"

      assert_select "input#outcome_salary[name=?]", "outcome[salary]"

      assert_select "input#outcome_pay_period[name=?]", "outcome[pay_period]"

      assert_select "textarea#outcome_description[name=?]", "outcome[description]"

      assert_select "input#outcome_employer_name[name=?]", "outcome[employer_name]"

      assert_select "input#outcome_employer_phone[name=?]", "outcome[employer_phone]"

      assert_select "input#outcome_employer_email_address[name=?]", "outcome[employer_email_address]"

      assert_select "input#outcome_status[name=?]", "outcome[status]"

      assert_select "input#outcome_job_type_name[name=?]", "outcome[job_type_name]"

      assert_select "input#outcome_employment_type_name[name=?]", "outcome[employment_type_name]"

      assert_select "input#outcome_industry_name[name=?]", "outcome[industry_name]"

      assert_select "input#outcome_student_id[name=?]", "outcome[student_id]"

      assert_select "input#outcome_location_id[name=?]", "outcome[location_id]"
    end
  end
end
