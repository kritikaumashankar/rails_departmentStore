class CreateDepartmentals < ActiveRecord::Migration[5.2]
  def change
    create_table :departmentals do |t|
      t.string :name

      t.timestamps
    end
  end
end
