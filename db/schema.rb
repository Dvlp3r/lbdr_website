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

ActiveRecord::Schema.define(version: 20160806235504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "banners", force: :cascade do |t|
    t.integer  "sector_id"
    t.string   "en_title"
    t.text     "en_description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "order"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "es_description"
    t.text     "tr_description"
    t.string   "es_title"
    t.string   "tr_title"
    t.index ["sector_id"], name: "index_banners_on_sector_id", using: :btree
  end

  create_table "board_members", force: :cascade do |t|
    t.string   "en_first_name"
    t.string   "en_last_name"
    t.text     "en_bio"
    t.string   "en_position"
    t.string   "en_governance_type"
    t.integer  "group_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "es_bio"
    t.text     "tr_bio"
    t.string   "es_first_name"
    t.string   "tr_first_name"
    t.string   "es_last_name"
    t.string   "tr_last_name"
    t.string   "es_position"
    t.string   "tr_position"
    t.string   "es_governance_type"
    t.string   "tr_governance_type"
  end

  create_table "brand_banners", force: :cascade do |t|
    t.string   "en_title"
    t.text     "en_description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "es_description"
    t.text     "tr_description"
    t.string   "es_title"
    t.string   "tr_title"
  end

  create_table "brands", force: :cascade do |t|
    t.string   "en_name"
    t.string   "url"
    t.text     "en_description"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "brand_image_id"
    t.string   "brand_logo_id"
    t.string   "brand_photo_file_name"
    t.string   "brand_photo_content_type"
    t.integer  "brand_photo_file_size"
    t.datetime "brand_photo_updated_at"
    t.string   "logo_for_brand_file_name"
    t.string   "logo_for_brand_content_type"
    t.integer  "logo_for_brand_file_size"
    t.datetime "logo_for_brand_updated_at"
    t.integer  "sector_id"
    t.integer  "new_investment_id"
    t.text     "es_description"
    t.text     "tr_description"
    t.string   "es_name"
    t.string   "tr_name"
    t.index ["new_investment_id"], name: "index_brands_on_new_investment_id", using: :btree
    t.index ["sector_id"], name: "index_brands_on_sector_id", using: :btree
  end

  create_table "contents", force: :cascade do |t|
    t.string   "en_title"
    t.text     "en_description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "es_description"
    t.text     "tr_description"
    t.string   "es_title"
    t.string   "tr_title"
  end

  create_table "executives", force: :cascade do |t|
    t.string   "en_first_name"
    t.string   "en_last_name"
    t.string   "position"
    t.string   "photo"
    t.string   "governance_type"
    t.integer  "group_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "en_bio"
    t.text     "es_bio"
    t.text     "tr_bio"
    t.string   "es_first_name"
    t.string   "tr_first_name"
    t.string   "es_last_name"
    t.string   "tr_last_name"
  end

  create_table "group_banners", force: :cascade do |t|
    t.string   "en_title"
    t.text     "en_description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "group_photo_id"
    t.string   "group_photo_file_name"
    t.string   "group_photo_content_type"
    t.integer  "group_photo_file_size"
    t.datetime "group_photo_updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "es_description"
    t.text     "tr_description"
    t.string   "es_title"
    t.string   "tr_title"
  end

  create_table "groups", force: :cascade do |t|
    t.text     "en_about"
    t.text     "en_model"
    t.text     "en_executive_committee_description"
    t.text     "en_board_of_directors_description"
    t.string   "photo"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "en_spirit"
    t.text     "es_about"
    t.text     "tr_about"
    t.text     "es_model"
    t.text     "tr_model"
    t.text     "es_executive_committee_description"
    t.text     "tr_executive_committee_description"
    t.text     "es_board_of_directors_description"
    t.text     "tr_board_of_directors_description"
    t.text     "es_spirit"
    t.text     "tr_spirit"
  end

  create_table "homes", force: :cascade do |t|
    t.string   "en_title"
    t.text     "en_description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "es_description"
    t.text     "tr_description"
    t.string   "es_title"
    t.string   "tr_title"
  end

  create_table "investor_contents", force: :cascade do |t|
    t.string   "en_title"
    t.text     "en_description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "es_description"
    t.text     "tr_description"
    t.string   "es_title"
    t.string   "tr_title"
  end

  create_table "investors", force: :cascade do |t|
    t.string   "en_firstname"
    t.string   "en_lastname"
    t.text     "en_description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "es_description"
    t.text     "tr_description"
    t.string   "es_firstname"
    t.string   "tr_firstname"
    t.string   "es_lastname"
    t.string   "tr_lastname"
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "new_investments", force: :cascade do |t|
    t.string   "en_title"
    t.text     "en_description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "es_description"
    t.text     "tr_description"
    t.string   "es_title"
    t.string   "tr_title"
  end

  create_table "post_banners", force: :cascade do |t|
    t.string   "en_title"
    t.text     "en_description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "es_description"
    t.text     "tr_description"
    t.string   "es_title"
    t.string   "tr_title"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "en_title"
    t.string   "en_author"
    t.text     "en_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "es_content"
    t.text     "tr_content"
    t.string   "es_title"
    t.string   "tr_title"
    t.string   "es_author"
    t.string   "tr_author"
  end

  create_table "sector_banners", force: :cascade do |t|
    t.string   "en_title"
    t.text     "en_description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "es_description"
    t.text     "tr_description"
    t.string   "es_title"
    t.string   "tr_title"
  end

  create_table "sector_brands", force: :cascade do |t|
    t.integer  "sector_id"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_sector_brands_on_brand_id", using: :btree
    t.index ["sector_id"], name: "index_sector_brands_on_sector_id", using: :btree
  end

  create_table "sectors", force: :cascade do |t|
    t.string   "en_name"
    t.text     "en_description"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "sector_photo_id"
    t.string   "sector_photo_file_name"
    t.string   "sector_photo_content_type"
    t.integer  "sector_photo_file_size"
    t.datetime "sector_photo_updated_at"
    t.string   "icon_image"
    t.integer  "order"
    t.text     "es_description"
    t.text     "tr_description"
    t.string   "es_name"
    t.string   "tr_name"
  end

  create_table "social_media", force: :cascade do |t|
    t.integer  "brand_id"
    t.string   "type"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_social_media_on_brand_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "banners", "sectors"
  add_foreign_key "brands", "new_investments"
  add_foreign_key "brands", "sectors"
  add_foreign_key "social_media", "brands"
end
