class CreateProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :productos do |t|
      t.string :nombreProducto
      t.float :precio
      t.text :descripcion
      t.string :imagenProducto
      t.references :seccion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
