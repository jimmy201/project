class AddNewImageToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :new_image, :string

  end
end
