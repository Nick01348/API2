class CreatePedidos < ActiveRecord::Migration[6.0]
  def change
    create_table :pedidos do |t|
      t.string :direccionEntregaPedido
      t.integer :cantidadProductos
      t.references :usuario, null: false, foreign_key: true
      t.references :producto, null: false, foreign_key: true
      t.references :estado, null: false, foreign_key: true

      t.timestamps
    end
  end
end
