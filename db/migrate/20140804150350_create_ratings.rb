class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :username
      t.integer :joke_id
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end
