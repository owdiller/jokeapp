class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :username
      t.string :joke_id
      t.integer :rating

      t.timestamps
    end
  end
end
