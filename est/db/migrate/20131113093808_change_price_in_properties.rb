class ChangePriceInProperties < ActiveRecord::Migration
  def up  
     change_column :properties, :price, :string
  end

  def down 
     change_column :properties, :price, :string 
  end
end
