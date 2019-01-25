class AddResponses < ActiveRecord::Migration[5.1]
  def change
    change_table :responses do |t| 
      t.integer :answer_choice_id
      t.integer :user_id
    end 

    add_index :responses, user_id 
    add_index :responses, answer_choice_id
  end
end
