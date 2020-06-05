# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_05_155402) do

  create_table "estados", force: :cascade do |t|
    t.string "estadoPedido"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favoritos", force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.integer "producto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["producto_id"], name: "index_favoritos_on_producto_id"
    t.index ["usuario_id"], name: "index_favoritos_on_usuario_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.string "direccionEntregaPedido"
    t.integer "cantidadProductos"
    t.integer "usuario_id", null: false
    t.integer "producto_id", null: false
    t.integer "estado_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["estado_id"], name: "index_pedidos_on_estado_id"
    t.index ["producto_id"], name: "index_pedidos_on_producto_id"
    t.index ["usuario_id"], name: "index_pedidos_on_usuario_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombreProducto"
    t.float "precio"
    t.text "descripcion"
    t.integer "seccion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "imagen"
    t.index ["seccion_id"], name: "index_productos_on_seccion_id"
  end

  create_table "seccions", force: :cascade do |t|
    t.string "seccionProducto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombreUsuario"
    t.string "contraseñaUsuario"
    t.string "nombre"
    t.string "apellido"
    t.date "fechaNacimiento"
    t.integer "telefono"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "favoritos", "productos"
  add_foreign_key "favoritos", "usuarios"
  add_foreign_key "pedidos", "estados"
  add_foreign_key "pedidos", "productos"
  add_foreign_key "pedidos", "usuarios"
  add_foreign_key "productos", "seccions"
end
