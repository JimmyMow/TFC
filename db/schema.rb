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

ActiveRecord::Schema.define(:version => 20130606221339) do

  create_table "calls", :force => true do |t|
    t.integer "comit_player_id"
    t.integer "fouled_player_id"
    t.integer "game_id"
    t.integer "ref_id"
    t.integer "vote_id"
    t.integer "quarter"
    t.integer "time"
    t.integer "foul_id"
    t.integer "vote_counter",     :default => 0
    t.integer "comit_team_id"
    t.integer "fouled_team_id"
  end

  create_table "comments", :force => true do |t|
    t.integer "call_id"
    t.text    "text_box"
  end

  create_table "fouls", :force => true do |t|
    t.string  "fouls_type"
    t.integer "call_id"
  end

  create_table "games", :force => true do |t|
    t.string "event"
  end

  create_table "players", :force => true do |t|
    t.string  "name"
    t.integer "number"
    t.integer "team_id"
    t.integer "vote_id"
  end

  create_table "refs", :force => true do |t|
    t.string  "name"
    t.integer "number"
    t.integer "game_id"
    t.integer "vote_id"
  end

  create_table "teams", :force => true do |t|
    t.string  "name"
    t.string  "coach"
    t.integer "game_id"
    t.integer "call_id"
    t.integer "vote_id"
  end

  create_table "upvotes", :force => true do |t|
    t.integer "user_id"
    t.integer "call_id"
  end

  create_table "users", :force => true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "username"
    t.string  "email"
    t.integer "challenge_rating"
    t.string  "password_digest"
  end

  create_table "votes", :force => true do |t|
    t.integer "user_id"
    t.integer "call_id"
    t.integer "ref_id"
  end

end
