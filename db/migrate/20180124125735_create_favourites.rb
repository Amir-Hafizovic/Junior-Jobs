class CreateFavourites < ActiveRecord::Migration[5.1]
  def change
    create_table :favourites do |t|
      t.integer :user_id
      t.integer :job_id

      t.timestamps
    end
    add_index :favourites, :user_id
    add_index :favourites, :job_id
    add_index :favourites, [:user_id, :job_id], unique: true
  end
end
