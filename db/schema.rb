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

ActiveRecord::Schema.define(:version => 20130809132515) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "amazons", :force => true do |t|
    t.string   "file"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "answers", :force => true do |t|
    t.string   "ans"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "askquestions", :force => true do |t|
    t.string   "question"
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "books", :force => true do |t|
    t.string   "name"
    t.integer  "grade"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chapters", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "book_id"
  end

  create_table "emails", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "from"
    t.string   "to"
    t.string   "subject"
    t.string   "date"
    t.string   "content"
    t.integer  "to_id"
    t.integer  "from_id"
  end

  create_table "feedbacks", :force => true do |t|
    t.string   "name"
    t.string   "ur_comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "mobile"
    t.integer  "grade"
    t.string   "gender"
    t.string   "status"
  end

  create_table "notes", :force => true do |t|
    t.string   "file"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "chapter_id"
  end

  create_table "options", :force => true do |t|
    t.string   "mcq"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "quereys", :force => true do |t|
    t.string   "subject"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "grade"
    t.string   "question"
    t.string   "curr_ans"
    t.string   "sugg_ans"
    t.string   "reason"
  end

  create_table "questions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "marked_option_id"
    t.string   "q_type"
    t.string   "shortanswer"
    t.integer  "chapter_id"
  end

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.integer  "chapter_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email_add"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
