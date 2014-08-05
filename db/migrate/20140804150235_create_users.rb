class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :profilepicture
      t.string :description
      t.integer :rating
      t.string :password_digest

      t.timestamps
    end
  end
end
