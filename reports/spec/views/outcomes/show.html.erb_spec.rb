require 'rails_helper'

RSpec.describe "outcomes/show", type: :view do
  before(:each) do
    @outcome = assign(:outcome, Outcome.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Supervisor Name/)
    expect(rendered).to match(/Supervisor Email Address/)
    expect(rendered).to match(/Job Title/)
    expect(rendered).to match(/Department/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Pay Period/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Employer Name/)
    expect(rendered).to match(/Employer Phone/)
    expect(rendered).to match(/Employer Email Address/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Job Type Name/)
    expect(rendered).to match(/Employment Type Name/)
    expect(rendered).to match(/Industry Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
