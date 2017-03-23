class AddUserFoto < ActiveRecord::Migration
  def change
    add_column :users, :user_foto, :string
  end
end
