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

ActiveRecord::Schema.define(:version => 20131023212729) do

  create_table "charts", :force => true do |t|
    t.string   "titulo"
    t.integer  "noticia_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clientes", :force => true do |t|
    t.string   "logo"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contactos", :force => true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "telefono"
    t.string   "mensaje"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "imagenes", :force => true do |t|
    t.string   "imagen"
    t.integer  "noticia_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "miembros", :force => true do |t|
    t.string   "nombre"
    t.string   "tipo"
    t.string   "fotografia"
    t.string   "email"
    t.string   "linkedin"
    t.text     "contenido"
    t.string   "puesto"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "noticias", :force => true do |t|
    t.string   "titulo"
    t.string   "subtitulo"
    t.text     "contenido"
    t.string   "link"
    t.string   "tipo"
    t.date     "fecha"
    t.string   "categoria"
    t.boolean  "destacado"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "postulantes", :force => true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "curriculum"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "proyectos", :force => true do |t|
    t.string   "nombre"
    t.string   "logo"
    t.string   "foto"
    t.text     "contenido"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "servicios", :force => true do |t|
    t.string   "icono"
    t.string   "nombre"
    t.text     "contenido"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "slides", :force => true do |t|
    t.string   "imagen"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "videos", :force => true do |t|
    t.string   "link"
    t.integer  "noticia_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
