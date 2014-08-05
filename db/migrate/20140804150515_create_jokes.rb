class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :joke
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end
