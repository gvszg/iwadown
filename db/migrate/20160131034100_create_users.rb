class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid, :username, :password_digest, :email, :provider, :oauth_token
      t.datetime :oauth_expires_at
      t.timestamps
    end
  end
end