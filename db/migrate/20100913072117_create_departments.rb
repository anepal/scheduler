class CreateDepartments < ActiveRecord::Migration
  def self.up
    create_table :departments do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.text :optional_info

      t.timestamps
    end
  end

  def self.down
    drop_table :departments
  end
end
