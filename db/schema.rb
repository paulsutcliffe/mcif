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

ActiveRecord::Schema.define(:version => 20140228201004) do

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

  create_table "asociado_translations", :force => true do |t|
    t.integer  "asociado_id"
    t.string   "locale",      :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "descripcion"
  end

  add_index "asociado_translations", ["asociado_id"], :name => "index_asociado_translations_on_asociado_id"
  add_index "asociado_translations", ["locale"], :name => "index_asociado_translations_on_locale"

  create_table "asociados", :force => true do |t|
    t.string   "imagen"
    t.string   "link"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "descripcion"
    t.integer  "position"
    t.string   "nombre"
    t.string   "slug"
    t.string   "slug_en"
    t.string   "slug_es"
  end

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
    t.text     "mensaje"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "datos_de_contacto_translations", :force => true do |t|
    t.integer  "datos_de_contacto_id"
    t.string   "locale",               :null => false
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.text     "trabaja_con_nosotros"
  end

  add_index "datos_de_contacto_translations", ["datos_de_contacto_id"], :name => "index_datos_de_contacto_translations_on_datos_de_contacto_id"
  add_index "datos_de_contacto_translations", ["locale"], :name => "index_datos_de_contacto_translations_on_locale"

  create_table "datos_de_contactos", :force => true do |t|
    t.string   "telefono"
    t.string   "direccion"
    t.text     "trabaja_con_nosotros"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "historia", :force => true do |t|
    t.string   "titulo"
    t.string   "subtitulo"
    t.text     "contenido"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "historium_translations", :force => true do |t|
    t.integer  "historium_id"
    t.string   "locale",       :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.text     "contenido"
    t.string   "subtitulo"
    t.string   "titulo"
  end

  add_index "historium_translations", ["historium_id"], :name => "index_historium_translations_on_historium_id"
  add_index "historium_translations", ["locale"], :name => "index_historium_translations_on_locale"

  create_table "imagenes", :force => true do |t|
    t.string   "imagen"
    t.integer  "noticia_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "miembro_translations", :force => true do |t|
    t.integer  "miembro_id"
    t.string   "locale",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "contenido"
    t.string   "puesto"
    t.string   "profesion"
    t.text     "resumen"
  end

  add_index "miembro_translations", ["locale"], :name => "index_miembro_translations_on_locale"
  add_index "miembro_translations", ["miembro_id"], :name => "index_miembro_translations_on_miembro_id"

  create_table "miembros", :force => true do |t|
    t.string   "nombre"
    t.string   "tipo"
    t.string   "fotografia"
    t.string   "email"
    t.string   "linkedin"
    t.text     "contenido"
    t.string   "puesto"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "profesion"
    t.text     "resumen"
    t.string   "slug_en"
    t.string   "slug_es"
  end

  add_index "miembros", ["slug_en"], :name => "index_miembros_on_slug_en"
  add_index "miembros", ["slug_es"], :name => "index_miembros_on_slug_es"

  create_table "noticia_translations", :force => true do |t|
    t.integer  "noticia_id"
    t.string   "locale",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "contenido"
    t.string   "subtitulo"
    t.text     "comentario"
  end

  add_index "noticia_translations", ["locale"], :name => "index_noticia_translations_on_locale"
  add_index "noticia_translations", ["noticia_id"], :name => "index_noticia_translations_on_noticia_id"

  create_table "noticias", :force => true do |t|
    t.string   "titulo"
    t.string   "subtitulo"
    t.text     "contenido"
    t.string   "link"
    t.string   "tipo"
    t.date     "fecha"
    t.string   "categoria"
    t.string   "subcategoria"
    t.boolean  "destacado"
    t.string   "slug"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.text     "comentario"
    t.string   "slug_en"
    t.string   "slug_es"
    t.string   "boletin"
  end

  add_index "noticias", ["slug_en"], :name => "index_noticias_on_slug_en"
  add_index "noticias", ["slug_es"], :name => "index_noticias_on_slug_es"

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
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "puntos", :force => true do |t|
    t.string   "x"
    t.string   "y"
    t.string   "leyenda"
    t.integer  "noticia_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "servicio_translations", :force => true do |t|
    t.integer  "servicio_id"
    t.string   "locale",      :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "nombre"
    t.text     "contenido"
  end

  add_index "servicio_translations", ["locale"], :name => "index_servicio_translations_on_locale"
  add_index "servicio_translations", ["servicio_id"], :name => "index_servicio_translations_on_servicio_id"

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
    t.string   "video"
    t.integer  "position"
  end

  create_table "texto_de_inicio_translations", :force => true do |t|
    t.integer  "texto_de_inicio_id"
    t.string   "locale",             :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.text     "contenido"
  end

  add_index "texto_de_inicio_translations", ["locale"], :name => "index_texto_de_inicio_translations_on_locale"
  add_index "texto_de_inicio_translations", ["texto_de_inicio_id"], :name => "index_texto_de_inicio_translations_on_texto_de_inicio_id"

  create_table "texto_de_inicios", :force => true do |t|
    t.text     "contenido"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "contenido2"
    t.text     "contenido3"
  end

  create_table "texto_de_noticias", :force => true do |t|
    t.text     "contenido"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "texto_de_servicio_translations", :force => true do |t|
    t.integer  "texto_de_servicio_id"
    t.string   "locale",               :null => false
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.text     "contenido"
    t.string   "subtitulo"
  end

  add_index "texto_de_servicio_translations", ["locale"], :name => "index_texto_de_servicio_translations_on_locale"
  add_index "texto_de_servicio_translations", ["texto_de_servicio_id"], :name => "index_texto_de_servicio_translations_on_texto_de_servicio_id"

  create_table "texto_de_servicios", :force => true do |t|
    t.text     "contenido"
    t.string   "subtitulo"
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
