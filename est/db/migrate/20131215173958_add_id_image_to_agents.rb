class AddIdImageToAgents < ActiveRecord::Migration
  def change
    add_column :agents, :id_image, :string

  end
end
