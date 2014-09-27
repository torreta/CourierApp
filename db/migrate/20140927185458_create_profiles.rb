class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :role
      t.string :cedula
      t.string :name
      t.string :lastname
      t.string :phone
      t.string :address
      t.references :agency, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
