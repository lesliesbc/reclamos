class CreateReclamoTiendas < ActiveRecord::Migration
  def change
    create_table :reclamo_tiendas do |t|
      t.references :recla, index: true
      t.references :tienda, index: true

      t.timestamps
    end
  end
end
