class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :teacher
      t.attachment :image
      t.text :content

      t.timestamps
    end
  end
end
