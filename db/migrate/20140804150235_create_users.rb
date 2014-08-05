class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :profilepicture
      t.string :description
      t.integer :rating

      t.timestamps
    end
  end
end
