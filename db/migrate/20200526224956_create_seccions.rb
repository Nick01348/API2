class CreateSeccions < ActiveRecord::Migration[6.0]
  def change
    create_table :seccions do |t|
      t.string :seccionProducto

      t.timestamps
    end
  end
end
