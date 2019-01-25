class AddPolls < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t| 
      t.integer :author_id
      t.string :title

      t.timestamps
    end

    add_index 
  end
end
