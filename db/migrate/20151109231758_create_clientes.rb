class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.string :comuna
      t.integer :telefono
      t.string :correo

      t.timestamps
    end
  end
end
