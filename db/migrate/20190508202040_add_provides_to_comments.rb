class AddProvidesToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :provide, foreign_key: true
  end
end
