# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  uid              :string(255)
#  username         :string(255)
#  password_digest  :string(255)
#  email            :string(255)
#  provider         :string(255)
#  oauth_token      :string(255)
#  oauth_expires_at :datetime
#  created_at       :datetime
#  updated_at       :datetime
#  status           :integer          default(1)
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :events

  validates_presence_of :email, :password, :username
  
  def self.koala(auth)
    access_token = auth['token']
    facebook = Koala::Facebook::API.new(access_token)
    facebook.get_object("me?fields=name,picture")
  end
end