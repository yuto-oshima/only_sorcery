class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string   :name,                limit: 191,                            comment: 'ユーザー名'
      t.string   :email,               limit: 191, index: true, unique: true, comment: 'email'
      t.text     :comment,                                                    comment: 'コメント'
      t.integer  :publish,             limit: 1,   default: 0,                comment: '公開設定'
      t.integer  :status,              limit: 1,   default: 0,                comment: '承認設定'
      t.integer  :user_type,           limit: 1,   default: 0,                comment: 'ユーザー区分'
      t.string   :crypted_password,    limit: 191, index: true,               comment: '暗号化済パスワード'
      t.string   :salt,                limit: 191,                            comment: '暗号化ソルト'
      t.string   :confirmation_token,  limit: 191, index: true,               comment: '認証トークン'
      t.datetime :confirmed_at,                                               comment: '認証日時'
      t.string   :remember_me_token,   limit: 191, index: true, default: nil, comment: '継続ログイントークン'
      t.datetime :remember_me_token_expires_at, default: nil,                 comment: '継続ログイン期限'
      t.datetime :last_login_at,                default: nil,                 comment: '最終ログイン日時'
      t.datetime :last_logout_at,               default: nil,                 comment: '最終ログアウト日時'
      t.datetime :last_activity_at,             default: nil,                 comment: '最終アクション日時'
      t.string   :last_login_from_ip_address,   limit: 191, default: nil,     comment: '最終ログインIP'
    end

    add_index :users, [:last_logout_at, :last_activity_at]
  end
end
