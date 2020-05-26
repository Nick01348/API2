class CreateFavoritos < ActiveRecord::Migration[6.0]
  def change
    create_table :favoritos do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :producto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
