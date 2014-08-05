class CreatePasswords < ActiveRecord::Migration
  def change
    create_table :passwords do |t|
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
