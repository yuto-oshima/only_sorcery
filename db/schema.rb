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

ActiveRecord::Schema.define(version: 2019_06_29_150839) do

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 191, comment: "ユーザー名"
    t.string "email", limit: 191, comment: "email"
    t.text "comment", comment: "コメント"
    t.integer "publish", limit: 1, default: 0, comment: "公開設定"
    t.integer "status", limit: 1, default: 0, comment: "承認設定"
    t.integer "user_type", limit: 1, default: 0, comment: "ユーザー区分"
    t.string "crypted_password", limit: 191, comment: "暗号化済パスワード"
    t.string "salt", limit: 191, comment: "暗号化ソルト"
    t.string "confirmation_token", limit: 191, comment: "認証トークン"
    t.datetime "confirmed_at", comment: "認証日時"
    t.string "remember_me_token", limit: 191, comment: "継続ログイントークン"
    t.datetime "remember_me_token_expires_at", comment: "継続ログイン期限"
    t.datetime "last_login_at", comment: "最終ログイン日時"
    t.datetime "last_logout_at", comment: "最終ログアウト日時"
    t.datetime "last_activity_at", comment: "最終アクション日時"
    t.string "last_login_from_ip_address", limit: 191, comment: "最終ログインIP"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token"
    t.index ["crypted_password"], name: "index_users_on_crypted_password"
    t.index ["email"], name: "index_users_on_email"
    t.index ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at"
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token"
  end

end
