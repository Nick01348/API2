class AddImagenToProductos < ActiveRecord::Migration[6.0]
  def change
    add_column :productos, :imagen, :string
  end
end
