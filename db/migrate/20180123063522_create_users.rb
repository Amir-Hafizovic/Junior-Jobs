class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :password_digest
      t.text :employer_title
      t.text :junior_title
      t.integer :user_type
      t.text :image
      t.text :bio

      t.timestamps
    end
  end
end
