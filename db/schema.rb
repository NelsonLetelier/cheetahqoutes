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

ActiveRecord::Schema.define(:version => 20120410022126) do

  create_table "companies", :force => true do |t|
    t.string   "pais"
    t.string   "ciudad"
    t.string   "direccion"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companies_laptops", :id => false, :force => true do |t|
    t.integer "laptops_id"
    t.integer "companies_id"
  end

  create_table "company_laptops", :force => true do |t|
    t.integer  "company_id"
    t.integer  "user_id"
    t.integer  "cantidad"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cores", :force => true do |t|
    t.integer  "frecuencia"
    t.integer  "marca"
    t.integer  "nucleos"
    t.string   "modelo"
    t.string   "nombre"
    t.integer  "thread"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "graphic_memories", :force => true do |t|
    t.string   "marca"
    t.string   "modelo"
    t.integer  "ddr"
    t.integer  "capacidad"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hard_drives", :force => true do |t|
    t.string   "marca"
    t.integer  "tamano"
    t.integer  "cache"
    t.string   "rpm"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "laptops", :force => true do |t|
    t.integer  "precio"
    t.string   "modelo"
    t.string   "marca"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "memories", :force => true do |t|
    t.string   "marca"
    t.integer  "frecuencia"
    t.integer  "tamaño"
    t.integer  "ddr"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
