json.array!(@outcomes) do |outcome|
  json.extract! outcome, :id, :supervisor_name, :supervisor_email_address, :job_title, :department, :start_date, :end_date, :currently_active, :salary, :pay_period, :description, :employer_name, :employer_phone, :employer_email_address, :status, :offer_date, :acceptance_date, :offer_accepted, :job_type_name, :employment_type_name, :industry_name, :student_id, :location_id
  json.url outcome_url(outcome, format: :json)
end
