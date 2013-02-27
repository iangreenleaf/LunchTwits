class User < ActiveRecord::Base
  def self.find_or_create_from_auth_hash h
    u = self.find_by_username h["info"]["nickname"]
    u ||= self.new(
      :provider => h["provider"],
      :uid => h["uid"],
      :username => h["info"]["nickname"],
      :token => h["credentials"]["token"]
    )
    u.save!
    u
  end
end
