class CreateViewings < ActiveRecord::Migration
  def change
    create_table :viewings do |t|
      t.date :date
      t.time :time
      t.integer :agent_id
      t.integer :buyer_id
      t.integer :property_id

      t.timestamps
    end
  end
end
