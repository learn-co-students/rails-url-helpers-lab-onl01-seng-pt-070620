class AddColumnToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :active, :boolean, default: 0
  end
end
