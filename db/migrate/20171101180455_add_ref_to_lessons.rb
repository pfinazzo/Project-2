class AddRefToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :student_id, :integer
  end
end
