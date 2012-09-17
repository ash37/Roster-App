class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :role
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :mobile
      t.string :home_phone
      t.string :email

      t.timestamps
    end
  end
end
