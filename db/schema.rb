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

ActiveRecord::Schema.define(:version => 20140708174458) do

  create_table "invoices", :force => true do |t|
    t.integer  "partner_id"
    t.string   "description"
    t.decimal  "total"
    t.integer  "vat"
    t.date     "creation_date"
    t.date     "payment_date"
    t.integer  "number"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "paid"
    t.string   "currency"
  end

  create_table "partners", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "email"
    t.string   "vat"
    t.string   "bankaccount"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
