class CreateNusuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :nusuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :password
      t.date :fechaNacimiento

      t.timestamps
    end
  end
end
