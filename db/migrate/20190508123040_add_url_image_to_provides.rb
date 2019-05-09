class AddUrlImageToProvides < ActiveRecord::Migration[5.2]
  def change
    add_column :provides, :urlImage, :string
    add_column :provides, :string, :string
  end
end
