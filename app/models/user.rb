# == Schema Information
#
# Table name: users
#
#  id               :bigint           not null, primary key
#  name             :string(191)
#  email            :string(191)
#  crypted_password :string(191)
#  salt             :string(191)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 8 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :email, uniqueness: true
  #validates :name, lenght: { minimnm: 4 }
end
