class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.references :user, foreign_key: true
      t.string :instrument
      t.string :time
      t.string :date
      t.string :location
      t.text :content

      t.timestamps
    end
  end
end
