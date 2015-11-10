class CreateTiendas < ActiveRecord::Migration
  def change
    create_table :tiendas do |t|
      t.string :nombre
      t.string :ubicacion

      t.timestamps
    end
  end
end
