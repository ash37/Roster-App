class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :level
      t.integer :age
      t.decimal :rate

      t.timestamps
    end
  end
end
