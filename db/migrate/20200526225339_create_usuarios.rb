class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :nombreUsuario
      t.string :contraseñaUsuario
      t.string :nombre
      t.string :apellido
      t.date :fechaNacimiento
      t.integer :telefono
      t.string :email

      t.timestamps
    end
  end
end
