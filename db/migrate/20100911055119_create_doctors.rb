class CreateDoctors < ActiveRecord::Migration
  def self.up
    create_table :doctors do |t|
      t.string :full_name
      t.string :address
      t.string :phone
      t.string :email
      t.text :optional_info

      t.timestamps
    end
  end

  def self.down
    drop_table :doctors
  end
end
