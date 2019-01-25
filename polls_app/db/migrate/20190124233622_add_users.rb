class AddUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t| 
      t.string :username, unique: true

      t.timestamps
    end 

    add_index :users, :username
  end
end
