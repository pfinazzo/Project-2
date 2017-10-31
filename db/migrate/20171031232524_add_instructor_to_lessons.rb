class AddInstructorToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :instructor, :string
  end
end
