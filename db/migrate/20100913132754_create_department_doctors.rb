class CreateDepartmentDoctors < ActiveRecord::Migration
  def self.up
    create_table :department_doctors do |t|
      t.references, :doctor
      t.references, :department
      t.start_time, :string
      t.end_time :string

      t.timestamps
    end
  end

  def self.down
    drop_table :department_doctors
  end
end
