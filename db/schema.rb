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

ActiveRecord::Schema.define(version: 20160104144327) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "ahoy_events", force: :cascade do |t|
    t.uuid     "visit_id",   limit: 16
    t.integer  "user_id",    limit: 4
    t.string   "name",       limit: 255
    t.text     "properties", limit: 65535
    t.datetime "time"
  end

  add_index "ahoy_events", ["time"], name: "index_ahoy_events_on_time", using: :btree
  add_index "ahoy_events", ["user_id"], name: "index_ahoy_events_on_user_id", using: :btree
  add_index "ahoy_events", ["visit_id"], name: "index_ahoy_events_on_visit_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "available",  limit: 255, default: "Yes"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.text     "message",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "gender_products", force: :cascade do |t|
    t.integer  "gender_id",  limit: 4
    t.integer  "product_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "gender_products", ["gender_id"], name: "index_gender_products_on_gender_id", using: :btree
  add_index "gender_products", ["product_id"], name: "index_gender_products_on_product_id", using: :btree

  create_table "genders", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "genre_products", force: :cascade do |t|
    t.integer "genre_id",   limit: 4
    t.integer "product_id", limit: 4
  end

  add_index "genre_products", ["genre_id"], name: "index_genre_products_on_genre_id", using: :btree
  add_index "genre_products", ["product_id"], name: "index_genre_products_on_product_id", using: :btree

  create_table "genre_searches", force: :cascade do |t|
    t.integer  "genre_id",   limit: 4
    t.integer  "search_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "genre_searches", ["genre_id"], name: "index_genre_searches_on_genre_id", using: :btree
  add_index "genre_searches", ["search_id"], name: "index_genre_searches_on_search_id", using: :btree

  create_table "genres", force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "gifter_interests", force: :cascade do |t|
    t.integer  "gifter_id",   limit: 4
    t.integer  "interest_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "gifter_interests", ["gifter_id"], name: "index_gifter_interests_on_gifter_id", using: :btree
  add_index "gifter_interests", ["interest_id"], name: "index_gifter_interests_on_interest_id", using: :btree

  create_table "gifters", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "name",                   limit: 255
    t.string   "image",                  limit: 255
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
    t.integer  "target_id",              limit: 4
    t.integer  "genre_id",               limit: 4
  end

  add_index "gifters", ["email"], name: "index_gifters_on_email", unique: true, using: :btree
  add_index "gifters", ["genre_id"], name: "index_gifters_on_genre_id", using: :btree
  add_index "gifters", ["provider"], name: "index_gifters_on_provider", using: :btree
  add_index "gifters", ["reset_password_token"], name: "index_gifters_on_reset_password_token", unique: true, using: :btree
  add_index "gifters", ["target_id"], name: "index_gifters_on_target_id", using: :btree
  add_index "gifters", ["uid"], name: "index_gifters_on_uid", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "available",  limit: 255, default: "Yes"
  end

  create_table "images", force: :cascade do |t|
    t.string   "file_file_name",    limit: 255
    t.string   "file_content_type", limit: 255
    t.integer  "file_file_size",    limit: 4
    t.datetime "file_updated_at"
    t.integer  "product_id",        limit: 4
    t.integer  "store_id",          limit: 4
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.boolean  "cover",             limit: 1,   default: false
    t.integer  "group_id",          limit: 4
    t.integer  "splash_id",         limit: 4
  end

  add_index "images", ["product_id"], name: "index_images_on_product_id", using: :btree
  add_index "images", ["store_id"], name: "index_images_on_store_id", using: :btree

  create_table "interest_products", force: :cascade do |t|
    t.integer  "interest_id", limit: 4
    t.integer  "product_id",  limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "interest_products", ["interest_id"], name: "index_interest_products_on_interest_id", using: :btree
  add_index "interest_products", ["product_id"], name: "index_interest_products_on_product_id", using: :btree

  create_table "interest_searches", force: :cascade do |t|
    t.integer  "interest_id", limit: 4
    t.integer  "search_id",   limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "interest_searches", ["interest_id"], name: "index_interest_searches_on_interest_id", using: :btree
  add_index "interest_searches", ["search_id"], name: "index_interest_searches_on_search_id", using: :btree

  create_table "interests", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "available",  limit: 255, default: "Yes"
  end

  create_table "occasion_products", force: :cascade do |t|
    t.integer  "occasion_id", limit: 4
    t.integer  "product_id",  limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "occasion_products", ["occasion_id"], name: "index_occasion_products_on_occasion_id", using: :btree
  add_index "occasion_products", ["product_id"], name: "index_occasion_products_on_product_id", using: :btree

  create_table "occasions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "available",  limit: 255
  end

  create_table "product_groups", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.integer  "group_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "product_groups", ["group_id"], name: "index_product_groups_on_group_id", using: :btree
  add_index "product_groups", ["product_id"], name: "index_product_groups_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.text     "description",     limit: 65535
    t.decimal  "price",                         precision: 10
    t.string   "link",            limit: 255
    t.integer  "user_id",         limit: 4
    t.integer  "store_id",        limit: 4
    t.integer  "occasion_id",     limit: 4
    t.integer  "relationship_id", limit: 4
    t.integer  "interest_id",     limit: 4
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
    t.integer  "target_id",       limit: 4
    t.integer  "hits_count",      limit: 4,                    default: 0,     null: false
    t.integer  "category_id",     limit: 4
    t.string   "available",       limit: 255,                  default: "Yes"
    t.string   "public_price",    limit: 255
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["interest_id"], name: "index_products_on_interest_id", using: :btree
  add_index "products", ["occasion_id"], name: "index_products_on_occasion_id", using: :btree
  add_index "products", ["relationship_id"], name: "index_products_on_relationship_id", using: :btree
  add_index "products", ["store_id"], name: "index_products_on_store_id", using: :btree
  add_index "products", ["target_id"], name: "index_products_on_target_id", using: :btree
  add_index "products", ["user_id"], name: "index_products_on_user_id", using: :btree

  create_table "relationship_products", force: :cascade do |t|
    t.integer  "relationship_id", limit: 4
    t.integer  "product_id",      limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "relationship_products", ["product_id"], name: "index_relationship_products_on_product_id", using: :btree
  add_index "relationship_products", ["relationship_id"], name: "index_relationship_products_on_relationship_id", using: :btree

  create_table "relationships", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "available",  limit: 255, default: "Yes"
  end

  create_table "searches", force: :cascade do |t|
    t.integer  "occasion_id",     limit: 4
    t.integer  "relationship_id", limit: 4
    t.integer  "target_id",       limit: 4
    t.text     "genre_ids",       limit: 65535
    t.text     "interest_ids",    limit: 65535
    t.integer  "user_id",         limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "category_id",     limit: 4
    t.integer  "min",             limit: 4
    t.integer  "max",             limit: 4
    t.integer  "store_id",        limit: 4
    t.string   "order",           limit: 255
  end

  create_table "splashes", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "available",  limit: 255, default: "Yes"
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "address",     limit: 255
    t.text     "description", limit: 65535
    t.string   "link",        limit: 255
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "available",   limit: 255,   default: "Yes"
  end

  add_index "stores", ["user_id"], name: "index_stores_on_user_id", using: :btree

  create_table "target_products", force: :cascade do |t|
    t.integer  "target_id",  limit: 4
    t.integer  "product_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "target_products", ["product_id"], name: "index_target_products_on_product_id", using: :btree
  add_index "target_products", ["target_id"], name: "index_target_products_on_target_id", using: :btree

  create_table "targets", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "available",  limit: 255, default: "Yes"
  end

  create_table "user_interests", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "interest_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "user_interests", ["interest_id"], name: "index_user_interests_on_interest_id", using: :btree
  add_index "user_interests", ["user_id"], name: "index_user_interests_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
    t.string   "location",               limit: 255
    t.integer  "target_id",              limit: 4
    t.integer  "genre_id",               limit: 4
    t.string   "role",                   limit: 255
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["genre_id"], name: "index_users_on_genre_id", using: :btree
  add_index "users", ["provider"], name: "index_users_on_provider", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["target_id"], name: "index_users_on_target_id", using: :btree
  add_index "users", ["uid"], name: "index_users_on_uid", using: :btree

  create_table "visits", force: :cascade do |t|
    t.uuid     "visitor_id",       limit: 16
    t.string   "ip",               limit: 255
    t.text     "user_agent",       limit: 65535
    t.text     "referrer",         limit: 65535
    t.text     "landing_page",     limit: 65535
    t.integer  "user_id",          limit: 4
    t.string   "referring_domain", limit: 255
    t.string   "search_keyword",   limit: 255
    t.string   "browser",          limit: 255
    t.string   "os",               limit: 255
    t.string   "device_type",      limit: 255
    t.integer  "screen_height",    limit: 4
    t.integer  "screen_width",     limit: 4
    t.string   "country",          limit: 255
    t.string   "region",           limit: 255
    t.string   "city",             limit: 255
    t.string   "postal_code",      limit: 255
    t.decimal  "latitude",                       precision: 10
    t.decimal  "longitude",                      precision: 10
    t.string   "utm_source",       limit: 255
    t.string   "utm_medium",       limit: 255
    t.string   "utm_term",         limit: 255
    t.string   "utm_content",      limit: 255
    t.string   "utm_campaign",     limit: 255
    t.datetime "started_at"
  end

  add_index "visits", ["user_id"], name: "index_visits_on_user_id", using: :btree

  add_foreign_key "gender_products", "genders"
  add_foreign_key "gender_products", "products"
  add_foreign_key "genre_products", "genres"
  add_foreign_key "genre_products", "products"
  add_foreign_key "genre_searches", "genres"
  add_foreign_key "genre_searches", "searches"
  add_foreign_key "gifter_interests", "gifters"
  add_foreign_key "gifter_interests", "interests"
  add_foreign_key "gifters", "genres"
  add_foreign_key "gifters", "targets"
  add_foreign_key "images", "products"
  add_foreign_key "images", "stores"
  add_foreign_key "interest_products", "interests"
  add_foreign_key "interest_products", "products"
  add_foreign_key "interest_searches", "interests"
  add_foreign_key "interest_searches", "searches"
  add_foreign_key "occasion_products", "occasions"
  add_foreign_key "occasion_products", "products"
  add_foreign_key "product_groups", "groups"
  add_foreign_key "product_groups", "products"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "interests"
  add_foreign_key "products", "occasions"
  add_foreign_key "products", "relationships"
  add_foreign_key "products", "stores"
  add_foreign_key "products", "targets"
  add_foreign_key "products", "users"
  add_foreign_key "relationship_products", "products"
  add_foreign_key "relationship_products", "relationships"
  add_foreign_key "stores", "users"
  add_foreign_key "target_products", "products"
  add_foreign_key "target_products", "targets"
  add_foreign_key "user_interests", "interests"
  add_foreign_key "user_interests", "users"
  add_foreign_key "users", "genres"
  add_foreign_key "users", "targets"
end
