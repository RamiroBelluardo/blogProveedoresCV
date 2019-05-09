class RemoveStringFromProvides < ActiveRecord::Migration[5.2]
  def change
    remove_column :provides, :string, :String
  end
end
