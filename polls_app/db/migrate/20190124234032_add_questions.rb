class AddQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t| 
      t.integer :poll_id
      t.string :text

      t.timestamps
    end

    add_index :questions :poll_id
  end
end
