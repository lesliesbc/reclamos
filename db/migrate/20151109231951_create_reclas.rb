class CreateReclas < ActiveRecord::Migration
  def change
    create_table :reclas do |t|
      t.string :tienda
      t.string :reclam
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
