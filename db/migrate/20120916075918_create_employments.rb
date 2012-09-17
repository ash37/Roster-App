class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.integer :store_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
