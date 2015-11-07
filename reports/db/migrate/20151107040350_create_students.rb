class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :email_address
      t.string :username
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :ethnicity

      t.timestamps null: false
    end
  end
end
