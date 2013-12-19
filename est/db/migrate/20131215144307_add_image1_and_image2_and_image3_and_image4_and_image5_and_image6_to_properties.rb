class AddImage1AndImage2AndImage3AndImage4AndImage5AndImage6ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image1, :string

    add_column :properties, :image2, :string

    add_column :properties, :image, :string

    add_column :properties, :image4, :string

    add_column :properties, :image5, :string

    add_column :properties, :image6, :string

  end
end
