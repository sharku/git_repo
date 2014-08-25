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

ActiveRecord::Schema.define(version: 20140813073444) do

  create_table "indexers", force: true do |t|
    t.string   "document",          limit: 25
    t.string   "section",           limit: 30
    t.string   "subsection",        limit: 35
    t.text     "acpt_criteria",     limit: 65536
    t.text     "usnrc",             limit: 65536
    t.text     "ds_430",            limit: 65536
    t.text     "related_standarts", limit: 65536
    t.text     "ggd1",              limit: 65536
    t.text     "taek_ggd2",         limit: 65536
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "indexers", ["document", "section", "subsection"], name: "index_indexers_on_document_and_section_and_subsection"

end
