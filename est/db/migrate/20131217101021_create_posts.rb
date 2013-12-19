class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :agent_id
      t.integer :property_id

      t.timestamps
    end
  end
end
