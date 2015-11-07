json.array!(@students) do |student|
  json.extract! student, :id, :email_address, :username, :first_name, :middle_name, :last_name, :ethnicity
  json.url student_url(student, format: :json)
end
