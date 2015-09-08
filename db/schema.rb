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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150902140644) do

  create_table "clients", force: :cascade do |t|
    t.string   "nom",        limit: 255
    t.string   "prenom",     limit: 255
    t.string   "tel",        limit: 255
    t.string   "ville",      limit: 255
    t.string   "cp",         limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "proddetails", force: :cascade do |t|
    t.string   "couleur",    limit: 255
    t.string   "pointure",   limit: 255
    t.integer  "gencode",    limit: 4
    t.integer  "stock",      limit: 4
    t.integer  "id_produit", limit: 4
    t.string   "details",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "proddetails", ["id_produit"], name: "index_proddetails_on_id_produit", using: :btree

  create_table "produits", force: :cascade do |t|
    t.string   "nom",           limit: 255
    t.string   "marque",        limit: 255
    t.decimal  "prix_ha",                   precision: 10
    t.decimal  "remise",                    precision: 10
    t.decimal  "coef",                      precision: 10
    t.decimal  "prix",                      precision: 10
    t.string   "justif_remise", limit: 255
    t.datetime "date_remise"
    t.string   "categorie",     limit: 255
    t.string   "saison",        limit: 255
    t.integer  "annee_s",       limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

end
