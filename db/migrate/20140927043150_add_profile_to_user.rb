class AddProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_column :users, :cedula, :string
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :agency_id, :integer
  end
end
