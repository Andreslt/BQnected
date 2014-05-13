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

ActiveRecord::Schema.define(:version => 20140513035729) do

  create_table "alerts", :force => true do |t|
    t.text     "contenido"
    t.string   "tipo"
    t.integer  "barrio_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "alerts", ["barrio_id"], :name => "index_alerts_on_barrio_id"

  create_table "barrios", :force => true do |t|
    t.string   "nombre"
    t.string   "locacion"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comentarios", :force => true do |t|
    t.integer  "usuario_id"
    t.text     "comentario"
    t.integer  "evento_id"
    t.boolean  "asistencia"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "eventos", :force => true do |t|
    t.string   "nombre"
    t.string   "tipo"
    t.date     "fecha"
    t.integer  "barrio_id"
    t.string   "ubicacion"
    t.integer  "asistentes"
    t.time     "hora"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "eventos", ["barrio_id"], :name => "index_eventos_on_barrio_id"

  create_table "usuarios", :force => true do |t|
    t.string   "nombre"
    t.integer  "barrio_id"
    t.text     "descripcion"
    t.string   "username"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
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
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end
