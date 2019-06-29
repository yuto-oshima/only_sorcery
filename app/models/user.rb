# == Schema Information
#
# Table name: users
#
#  id                           :bigint           not null, primary key
#  name                         :string(191)
#  email                        :string(191)
#  comment                      :text(65535)
#  publish                      :integer          default(0)
#  status                       :integer          default(0)
#  user_type                    :integer          default(0)
#  crypted_password             :string(191)
#  salt                         :string(191)
#  confirmation_token           :string(191)
#  confirmed_at                 :datetime
#  remember_me_token            :string(191)
#  remember_me_token_expires_at :datetime
#  last_login_at                :datetime
#  last_logout_at               :datetime
#  last_activity_at             :datetime
#  last_login_from_ip_address   :string(191)
#

class User < ApplicationRecord
  authenticates_with_sorcery!
end
