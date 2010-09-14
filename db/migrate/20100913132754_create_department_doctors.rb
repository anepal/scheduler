class CreateDepartmentDoctors < ActiveRecord::Migration
  def self.up
    create_table :department_doctors do |t|
      t.column :doctor_id, :integer
      t.column :department_id, :integer
      t.column :start_time,:string
      t.column :end_time, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :department_doctors
  end
end
