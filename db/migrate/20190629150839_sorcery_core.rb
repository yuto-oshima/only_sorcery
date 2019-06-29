class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string   :name,                limit: 191,                            comment: 'ユーザー名'
      t.string   :email,               limit: 191, index: true, unique: true, comment: 'email'
      t.string   :crypted_password,    limit: 191, index: true,               comment: '暗号化済パスワード'
      t.string   :salt,                limit: 191,                            comment: '暗号化ソルト'

      t.timestamps
    end
  end
end
