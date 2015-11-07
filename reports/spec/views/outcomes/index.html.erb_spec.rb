require 'rails_helper'

RSpec.describe "outcomes/index", type: :view do
  before(:each) do
    assign(:outcomes, [
      Outcome.create!(
        :supervisor_name => "Supervisor Name",
        :supervisor_email_address => "Supervisor Email Address",
        :job_title => "Job Title",
        :department => "Department",
        :currently_active => false,
        :salary => 1,
        :pay_period => "Pay Period",
        :description => "MyText",
        :employer_name => "Employer Name",
        :employer_phone => "Employer Phone",
        :employer_email_address => "Employer Email Address",
        :status => "Status",
        :job_type_name => "Job Type Name",
        :employment_type_name => "Employment Type Name",
        :industry_name => "Industry Name",
        :student => nil,
        :location => nil
      ),
      Outcome.create!(
        :supervisor_name => "Supervisor Name",
        :supervisor_email_address => "Supervisor Email Address",
        :job_title => "Job Title",
        :department => "Department",
        :currently_active => false,
        :salary => 1,
        :pay_period => "Pay Period",
        :description => "MyText",
        :employer_name => "Employer Name",
        :employer_phone => "Employer Phone",
        :employer_email_address => "Employer Email Address",
        :status => "Status",
        :job_type_name => "Job Type Name",
        :employment_type_name => "Employment Type Name",
        :industry_name => "Industry Name",
        :student => nil,
        :location => nil
      )
    ])
  end

  it "renders a list of outcomes" do
    render
    assert_select "tr>td", :text => "Supervisor Name".to_s, :count => 2
    assert_select "tr>td", :text => "Supervisor Email Address".to_s, :count => 2
    assert_select "tr>td", :text => "Job Title".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Pay Period".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Employer Name".to_s, :count => 2
    assert_select "tr>td", :text => "Employer Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Employer Email Address".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Job Type Name".to_s, :count => 2
    assert_select "tr>td", :text => "Employment Type Name".to_s, :count => 2
    assert_select "tr>td", :text => "Industry Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
