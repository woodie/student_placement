class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.string :supervisor_name
      t.string :supervisor_email_address
      t.string :job_title
      t.string :department
      t.date :start_date
      t.date :end_date
      t.boolean :currently_active
      t.integer :salary
      t.string :pay_period
      t.text :description
      t.string :employer_name
      t.string :employer_phone
      t.string :employer_email_address
      t.string :status
      t.date :offer_date
      t.date :acceptance_date
      t.date :offer_accepted
      t.string :job_type_name
      t.string :employment_type_name
      t.string :industry_name
      t.references :student, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
