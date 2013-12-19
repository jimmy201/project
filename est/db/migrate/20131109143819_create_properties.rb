class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.string :no_of_beds
      t.string :price
      t.string :photo
      t.text :description
      t.integer :agent_id

      t.timestamps
    end
  end
end
