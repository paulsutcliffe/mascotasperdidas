# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131125195519) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "animales", :force => true do |t|
    t.string   "nombre"
    t.integer  "publicacion_id"
    t.string   "slug"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "anuncios", :force => true do |t|
    t.string   "link"
    t.string   "imagen"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ciudades", :force => true do |t|
    t.string   "nombre"
    t.integer  "provincia_id"
    t.string   "slug"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "contactos", :force => true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "email"
    t.text     "mensaje"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "direcciones", :force => true do |t|
    t.string   "provincia"
    t.string   "ciudad"
    t.string   "distrito"
    t.string   "calle"
    t.text     "referencia"
    t.integer  "usuario_id"
    t.integer  "publicacion_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "distritos", :force => true do |t|
    t.string   "nombre"
    t.string   "codigo_postal"
    t.integer  "ciudad_id"
    t.string   "slug"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "imagenes", :force => true do |t|
    t.string   "imagen"
    t.integer  "publicacion_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "noticias", :force => true do |t|
    t.string   "titulo"
    t.string   "contenido"
    t.string   "foto"
    t.string   "video"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "planes", :force => true do |t|
    t.integer  "dias"
    t.float    "precio"
    t.text     "descripcion"
    t.integer  "publicacion_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "portadas", :force => true do |t|
    t.string   "imagen"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "provincias", :force => true do |t|
    t.string   "nombre"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "publicaciones", :force => true do |t|
    t.string   "tipo"
    t.string   "animal"
    t.string   "raza"
    t.string   "nombre"
    t.float    "recompensa",  :default => 0.0,         :null => false
    t.date     "fecha"
    t.text     "descripcion"
    t.float    "lat"
    t.float    "lng"
    t.string   "portada"
    t.string   "edad"
    t.string   "sexo"
    t.string   "slug"
    t.string   "status",      :default => "Pendiente", :null => false
    t.integer  "usuario_id"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "razas", :force => true do |t|
    t.string   "nombre"
    t.integer  "animal_id"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "slides", :force => true do |t|
    t.string   "link"
    t.string   "imagen"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "testimonios", :force => true do |t|
    t.string   "foto"
    t.text     "contenido"
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "dni"
    t.string   "telefono"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

  create_table "videos", :force => true do |t|
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
